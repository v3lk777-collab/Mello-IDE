use serde::Serialize;
use std::fs;
use std::path::Path;
use std::process::{Command, Stdio};
use std::sync::{Arc, Mutex};
use std::thread;
use std::time::Duration;
use tauri::Emitter;

struct SerialState(Arc<Mutex<Option<Box<dyn serialport::SerialPort>>>>);

#[derive(Serialize)]
struct FileEntry {
    name: String,
    path: String,
    is_dir: bool,
}

#[tauri::command]
fn initialize_project(path: String) -> Result<String, String> {
    let folder_path = Path::new(&path);
    let folder_name = folder_path.file_name().and_then(|n| n.to_str()).ok_or("Error")?;
    let new_file_path = folder_path.join(format!("{}.mello", folder_name));
    if !new_file_path.exists() {
        fs::write(&new_file_path, format!("# Project: {}", folder_name))
            .map_err(|e| e.to_string())?;
    }
    Ok(new_file_path.to_string_lossy().into_owned())
}

#[tauri::command]
fn get_directory_files(path: String) -> Result<Vec<FileEntry>, String> {
    let mut files = Vec::new();
    for entry in fs::read_dir(path).map_err(|e| e.to_string())? {
        let entry = entry.map_err(|e| e.to_string())?;
        let path  = entry.path();
        files.push(FileEntry {
            name:   entry.file_name().to_string_lossy().into_owned(),
            path:   path.to_string_lossy().into_owned(),
            is_dir: path.is_dir(),
        });
    }
    files.sort_by(|a, b| {
        b.is_dir.cmp(&a.is_dir)
            .then_with(|| a.name.to_lowercase().cmp(&b.name.to_lowercase()))
    });
    Ok(files)
}

#[tauri::command]
fn save_file(path: String, content: String) -> Result<(), String> {
    fs::write(&path, content).map_err(|e| e.to_string())
}

#[tauri::command]
fn read_file(path: String) -> Result<String, String> {
    fs::read_to_string(&path).map_err(|e| e.to_string())
}

#[tauri::command]
async fn run_command(
    action: String,
    file_path: String,
    window: tauri::Window,
) -> Result<(), String> {
    let mello_exe = r"..\mello\build\mello.exe";
    let mello_dir = r"..\mello\build";

    let mut cmd = Command::new(mello_exe);
    cmd.arg(&file_path)
        .current_dir(mello_dir)
        .stdout(Stdio::piped())
        .stderr(Stdio::piped());

    if action == "upload" {
        cmd.arg("--upload");
    }

    match cmd.spawn() {
        Ok(mut child) => {
            use std::io::{BufRead, BufReader};

            if let Some(stdout) = child.stdout.take() {
                for line in BufReader::new(stdout).lines().flatten() {
                    let _ = window.emit("terminal-output", &line);
                }
            }
            
            if let Some(stderr) = child.stderr.take() {
                for line in BufReader::new(stderr).lines().flatten() {
                    let _ = window.emit("terminal-output", &line);
                }
            }

            let status = child.wait().map_err(|e| e.to_string())?;
            
            if status.success() {
                Ok(())
            } else {
                Err(format!("Process exited with status: {}", status))
            }
        } Err(e) => {
            let msg = format!("Error starting Mello: {}", e);
            let _ = window.emit("terminal-output", &msg);
            Err(msg)
        }
    }
}

#[tauri::command]
fn list_ports() -> Vec<String> {
    serialport::available_ports()
        .unwrap_or_default()
        .into_iter()
        .map(|p| p.port_name)
        .collect()
}

#[tauri::command]
fn open_serial(
    port: String,
    baud: u32,
    state: tauri::State<SerialState>,
    app: tauri::AppHandle,
) -> Result<(), String> {
    *state.0.lock().unwrap() = None;

    let serial = serialport::new(&port, baud)
        .timeout(Duration::from_millis(10))
        .open()
        .map_err(|e| e.to_string())?;

    let reader = serial.try_clone().map_err(|e| e.to_string())?;
    *state.0.lock().unwrap() = Some(serial);

    thread::spawn(move || {
        use std::io::Read;
        let mut port   = reader;
        let mut buf    = vec![0u8; 256];
        let mut accum  = String::new();

        loop {
            match port.read(&mut buf) {
                Ok(0) | Err(_) => {
                    thread::sleep(Duration::from_millis(10));
                }
                Ok(n) => {
                    accum.push_str(&String::from_utf8_lossy(&buf[..n]));

                    while let Some(pos) = accum.find('\n') {
                        let line = accum.drain(..=pos).collect::<String>();
                        let line = line.trim_end_matches(['\r', '\n']).to_string();
                        if !line.is_empty() {
                            let _ = app.emit("serial-data", &line);
                        }
                    }
                }
            }
        }
    });

    Ok(())
}

#[tauri::command]
fn send_serial(message: String, state: tauri::State<SerialState>) -> Result<(), String> {
    use std::io::Write;
    let mut guard = state.0.lock().unwrap();
    if let Some(port) = guard.as_mut() {
        port.write_all(message.as_bytes()).map_err(|e| e.to_string())?;
    } else {
        return Err("No serial port open".into());
    }
    Ok(())
}

#[tauri::command]
fn close_serial(state: tauri::State<SerialState>) {
    *state.0.lock().unwrap() = None;
}

#[cfg_attr(mobile, tauri::mobile_entry_point)]
pub fn run() {
    tauri::Builder::default()
        .manage(SerialState(Arc::new(Mutex::new(None))))
        .plugin(tauri_plugin_dialog::init())
        .plugin(tauri_plugin_fs::init())
        .invoke_handler(tauri::generate_handler![
            initialize_project,
            get_directory_files,
            save_file,
            read_file,
            run_command,
            list_ports,
            open_serial,
            send_serial,
            close_serial,
        ])
        .run(tauri::generate_context!())
        .expect("error while running tauri application");
}