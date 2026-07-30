use serde::Serialize;
use std::path::PathBuf;
use std::process::Command;
use tauri::path::BaseDirectory;
use tauri::{AppHandle, Manager};

#[cfg(target_os = "windows")]
use std::os::windows::process::CommandExt;

fn resolve_compiler_path(app: &AppHandle) -> Result<PathBuf, String> {
    let binary_name = if cfg!(target_os = "windows") {
        "mello.exe"
    } else {
        "mello"
    };

    app.path()
        .resolve(format!("mello/build/{binary_name}"), BaseDirectory::Resource)
        .map_err(|e| e.to_string())
}

#[derive(Serialize)]
pub struct CompileResult {
    success: bool,
    output: String,
    error: String,
}

fn run_mello(app: &AppHandle, source_path: &str, upload: bool) -> Result<CompileResult, String> {
    let compiler_path = resolve_compiler_path(app)?;
    let compiler_dir = compiler_path
        .parent()
        .ok_or("Could not determine compiler directory")?;

    let mut cmd = Command::new(&compiler_path);
    cmd.current_dir(compiler_dir);
    cmd.arg(source_path);

    if upload {
        cmd.arg("--upload");
    }

    #[cfg(target_os = "windows")]
    cmd.creation_flags(0x08000000);

    let output = cmd.output().map_err(|e| e.to_string())?;

    Ok(CompileResult {
        success: output.status.success(),
        output: String::from_utf8_lossy(&output.stdout).to_string(),
        error: String::from_utf8_lossy(&output.stderr).to_string(),
    })
}

#[tauri::command]
pub async fn verify_code(app: AppHandle, source_path: String) -> Result<CompileResult, String> {
    tauri::async_runtime::spawn_blocking(move || {
        run_mello(&app, &source_path, false)
    })
    .await
    .map_err(|e| e.to_string())?
}

#[tauri::command]
pub async fn upload_code(app: AppHandle, source_path: String) -> Result<CompileResult, String> {
    tauri::async_runtime::spawn_blocking(move || {
        run_mello(&app, &source_path, true)
    })
    .await
    .map_err(|e| e.to_string())?
}