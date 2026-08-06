use crate::state::{OpenSerial, SerialState};
use std::io::{Read, Write};
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::Arc;
use std::time::{Duration, Instant};
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
        .timeout(Duration::from_millis(200))
        .open()
        .map_err(|e| e.to_string())?;

    let mut reader = serial.try_clone().map_err(|e| e.to_string())?;
    let stop_reader = Arc::new(AtomicBool::new(false));
    let stop_reader_thread = stop_reader.clone();

    {
        let mut guard = state.0.lock().map_err(|e| e.to_string())?;
        if let Some(previous) = guard.take() {
            previous.stop_reader.store(true, Ordering::Relaxed);
        }
        *guard = Some(OpenSerial { port: serial, stop_reader });
    }

    std::thread::spawn(move || {
        let mut buf = [0u8; 256];
        let mut pending = String::new();
        let mut last_data_at = Instant::now();

        loop {
            if stop_reader_thread.load(Ordering::Relaxed) {
                break;
            }

            match reader.read(&mut buf) {
                Ok(n) if n > 0 => {
                    pending.push_str(&String::from_utf8_lossy(&buf[..n]));
                    last_data_at = Instant::now();

                    while let Some(pos) = pending.find('\n') {
                        let line = pending[..pos].trim_end_matches('\r').to_string();

                        if app.emit("serial_data", line).is_err() {
                            return;
                        }


                        pending.drain(..=pos);
                    }
                }
                Ok(_) => {}

                Err(ref e) if e.kind() == std::io::ErrorKind::TimedOut => {
                    if !pending.is_empty() && last_data_at.elapsed() >= Duration::from_millis(300) {
                        if app.emit("serial_data", pending.trim_end_matches('\r').to_string()).is_err() {
                            return;
                        }

                        pending.clear();
                    }

                    continue;
                }

                Err(_) => break,
            }
        }

        if !pending.is_empty() {
            let _ = app.emit("serial_data", pending.trim_end_matches('\r').to_string());
        }
    });

    Ok(())
}

#[tauri::command]
pub fn close_serial(state: State<SerialState>) -> Result<(), String> {
    let mut guard = state.0.lock().map_err(|e| e.to_string())?;
    if let Some(previous) = guard.take() {
        previous.stop_reader.store(true, Ordering::Relaxed);
    }
    Ok(())
}

#[tauri::command]
pub fn send_serial(message: String, state: State<SerialState>) -> Result<(), String> {
    let mut guard = state.0.lock().map_err(|e| e.to_string())?;
    if let Some(open) = guard.as_mut() {
        open.port.write_all(message.as_bytes()).map_err(|e| e.to_string())?;
        Ok(())
    } else {
        Err("Serial port not open".into())
    }
}