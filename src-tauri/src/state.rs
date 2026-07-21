use std::sync::atomic::AtomicBool;
use std::sync::{Arc, Mutex};
use std::path::PathBuf;

pub struct OpenSerial {
    pub port: Box<dyn serialport::SerialPort>,
    pub stop_reader: Arc<AtomicBool>,
}

pub struct SerialState(pub Mutex<Option<OpenSerial>>);
pub struct ProjectState(pub Mutex<Option<PathBuf>>);