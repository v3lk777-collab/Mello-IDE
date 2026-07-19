use crate::state::SerialState;
use std::io::{Read, Write};
use std::time::Duration;
use tauri::{AppHandle, Emitter, State};

#[tauri::command]
pub fn list_ports() -> Result<Vec<String>, String> {
    let ports = serialport::available_ports().map_err(|e| e.to_string())?;
    Ok(ports.into_iter().map(|p| p.port_name).collect())
}

#[tauri::command]
pub fn open_serial(
    port: String,
    baud: u32,
    app: AppHandle,
    state: State<SerialState>,
) -> Result<(), String> {
    let serial = serialport::new(&port, baud)
        .timeout(Duration::from_millis(50))
        .open()
        .map_err(|e| e.to_string())?;

    let mut reader = serial.try_clone().map_err(|e| e.to_string())?;

    *state.0.lock().map_err(|e| e.to_string())? = Some(serial);

    std::thread::spawn(move || {
        let mut buf = [0u8; 256];
        loop {
            match reader.read(&mut buf) {
                Ok(n) if n > 0 => {
                    let data = String::from_utf8_lossy(&buf[..n]).to_string();
                    if app.emit("serial_data", data).is_err() {
                        break;
                    }
                }
                Ok(_) => {}
                Err(ref e) if e.kind() == std::io::ErrorKind::TimedOut => {}
                Err(_) => break,
            }
        }
    });

    Ok(())
}

#[tauri::command]
pub fn close_serial(state: State<SerialState>) -> Result<(), String> {
    *state.0.lock().map_err(|e| e.to_string())? = None;
    Ok(())
}

#[tauri::command]
pub fn send_serial(message: String, state: State<SerialState>) -> Result<(), String> {
    let mut guard = state.0.lock().map_err(|e| e.to_string())?;
    if let Some(serial) = guard.as_mut() {
        serial.write_all(message.as_bytes()).map_err(|e| e.to_string())?;
        Ok(())
    } else {
        Err("Serial port not open".into())
    }
}