use serde::Serialize;
use std::fs;
use tauri::State;
use crate::state::ProjectState;

#[derive(Serialize, Clone)]
pub struct FileItem {
    name: String,
    path: String,
    is_dir: bool,
}

#[tauri::command]
pub fn initialize_project(path: String, state: State<ProjectState>) -> Result<(), String> {
    if !std::path::Path::new(&path).exists() {
        return Err("Path does not exist".into());
    }

    *state.0.lock().map_err(|e| e.to_string())? = Some(path.into());
    Ok(())
}

#[tauri::command]
pub fn get_directory_files(path: String) -> Result<Vec<FileItem>, String> {
    let entries = fs::read_dir(&path).map_err(|e| e.to_string())?;
    let mut items = Vec::new();

    for entry in entries {
        let entry = entry.map_err(|e| e.to_string())?;
        let entry_path = entry.path();
        let name = entry.file_name().to_string_lossy().to_string();

        items.push(FileItem {
            name,
            path: entry_path.to_string_lossy().to_string(),
            is_dir: entry_path.is_dir(),
        });
    }

    items.sort_by(|a, b| match (a.is_dir, b.is_dir) {
        (true, false) => std::cmp::Ordering::Less,
        (false, true) => std::cmp::Ordering::Greater,
        _ => a.name.to_lowercase().cmp(&b.name.to_lowercase()),
    });

    Ok(items)
}

#[tauri::command]
pub fn read_file_content(path: String) -> Result<String, String> {
    fs::read_to_string(&path).map_err(|e| e.to_string())
}

#[tauri::command]
pub fn save_file_content(path: String, content: String) -> Result<(), String> {
    fs::write(&path, content).map_err(|e| e.to_string())
}