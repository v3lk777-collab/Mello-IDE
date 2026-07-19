use serde::Serialize;
use std::process::Command;

#[derive(Serialize)]
pub struct CompileResult {
    success: bool,
    output: String,
    error: String,
}

fn run_mello(source_path: &str, upload: bool) -> Result<CompileResult, String> {
    let compiler_path = "../bin/mello_compiler";

    let mut cmd = Command::new(compiler_path);
    cmd.arg(source_path);

    if upload {
        cmd.arg("--upload");
    }

    let output = cmd.output().map_err(|e| e.to_string())?;

    Ok(CompileResult {
        success: output.status.success(),
        output: String::from_utf8_lossy(&output.stdout).to_string(),
        error: String::from_utf8_lossy(&output.stderr).to_string(),
    })
}

#[tauri::command]
pub fn verify_code(source_path: String) -> Result<CompileResult, String> {
    run_mello(&source_path, false)
}

#[tauri::command]
pub fn upload_code(source_path: String) -> Result<CompileResult, String> {
    run_mello(&source_path, true)
}