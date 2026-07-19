use std::sync::Mutex;
use std::path::PathBuf;

pub struct SerialState(pub Mutex<Option<Box<dyn serialport::SerialPort>>>);
pub struct ProjectState(pub Mutex<Option<PathBuf>>);