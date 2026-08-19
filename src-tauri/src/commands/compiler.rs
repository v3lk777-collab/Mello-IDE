use serde::Serialize;
use std::io::{BufRead, BufReader};
use std::path::PathBuf;
use std::process::{Command, Stdio};
use tauri::path::BaseDirectory;
use tauri::{AppHandle, Emitter, Manager};

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
}

fn run_mello(app: &AppHandle, source_path: &str, board: &str, upload: bool) -> Result<CompileResult, String> {
    let compiler_path = resolve_compiler_path(app)?;
    let compiler_dir = compiler_path
        .parent()
        .ok_or("Could not determine compiler directory")?;

    let mut cmd = Command::new(&compiler_path);
    cmd.current_dir(compiler_dir);

    cmd.arg(source_path);
    cmd.arg(board);

    cmd.arg("--no-output");

    if upload {
        cmd.arg("--upload");
    }

    #[cfg(target_os = "windows")]
    cmd.creation_flags(0x08000000);

    cmd.stdout(Stdio::piped());
    cmd.stderr(Stdio::piped());

    let mut child = cmd.spawn().map_err(|e| e.to_string())?;

    let stdout = child.stdout.take().ok_or("Failed to capture stdout")?;
    let stderr = child.stderr.take().ok_or("Failed to capture stderr")?;

    let app_stdout = app.clone();
    let stdout_handle = std::thread::spawn(move || {
        let reader = BufReader::new(stdout);
        for line in reader.lines().flatten() {
            let _ = app_stdout.emit("compile_output", line);
        }
    });

    let app_stderr = app.clone();
    let stderr_handle = std::thread::spawn(move || {
        let reader = BufReader::new(stderr);
        for line in reader.lines().flatten() {
            let _ = app_stderr.emit("compile_output", line);
        }
    });

    let status = child.wait().map_err(|e| e.to_string())?;

    let _ = stdout_handle.join();
    let _ = stderr_handle.join();

    Ok(CompileResult {
        success: status.success(),
    })
}

#[tauri::command]
pub async fn verify_code(app: AppHandle, source_path: String, board: String) -> Result<CompileResult, String> {
    tauri::async_runtime::spawn_blocking(move || {
        run_mello(&app, &source_path, &board, false)
    })
    .await
    .map_err(|e| e.to_string())?
}

#[tauri::command]
pub async fn upload_code(app: AppHandle, source_path: String, board: String) -> Result<CompileResult, String> {
    tauri::async_runtime::spawn_blocking(move || {
        run_mello(&app, &source_path, &board, true)
    })
    .await
    .map_err(|e| e.to_string())?
}