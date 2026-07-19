mod commands;
mod state;

use std::sync::Mutex;
use state::{SerialState, ProjectState};

pub fn run() {
    tauri::Builder::default()
        .plugin(tauri_plugin_dialog::init())
        .plugin(tauri_plugin_fs::init())
        .plugin(tauri_plugin_opener::init()) 
        .manage(SerialState(Mutex::new(None)))
        .manage(ProjectState(Mutex::new(None)))
        .invoke_handler(tauri::generate_handler![
            commands::fs::initialize_project,
            commands::fs::get_directory_files,
            commands::fs::read_file_content,
            commands::fs::save_file_content,
            commands::compiler::verify_code,
            commands::compiler::upload_code,
            commands::serial::list_ports,
            commands::serial::open_serial,
            commands::serial::close_serial,
            commands::serial::send_serial,
        ])
        .run(tauri::generate_context!())
        .expect("error while running tauri application");
}
