# Mello IDE

[Node.js](https://nodejs.org/) and a package manager (npm/pnpm/yarn)
[Rust](https://www.rust-lang.org/tools/install) and the [Tauri CLI](https://tauri.app/start/prerequisites/)

A lightweight, purpose-built desktop IDE for the **Mello** programming language — an indentation-based, Python-like language that transpiles to native Arduino C++ with zero runtime overhead. Mello IDE wraps the Mello compiler in a fast, themeable editor with built-in file management, a terminal, and a serial monitor for working directly with Arduino boards.

Built with **Tauri**, **Rust**, and **React + TypeScript**.

---

## Features

- **Monaco-based code editor** with a custom Mello language definition:
  - Syntax highlighting for definitions (`start`, `loop`, `func`), control flow (`if`, `elif`, `else`, `while`, `for`, `repeat`, `every`, `return`, `or`, `and`, `not`, `in`, `range`, `break`, `continue`), and I/O calls (`turn_on`, `turn_off`, `toggle`, `wait`, `write`, `read`, `scale`, `on_press`, `len`, `sleep`, and the `serial.*` family)
  - Autocomplete / snippet suggestions for all language keywords and built-in functions
  - Auto-closing brackets and quotes (`{}`, `[]`, `()`, `"`)
  - Two switchable editor themes (`melloKids`, `girls`), selectable from Settings and persisted across sessions
  - Adjustable font size, font family (JetBrains Mono, Fira Code, Cascadia Code), and line height
- **Project explorer** — open a folder, browse nested directories, open/save files, with unsaved edits on the current file auto-saved before switching to another
- **In-app search** to filter files by name
- **Verify / Upload** — compiles the current file with the Mello compiler and optionally flashes it to a connected board, streaming results to the terminal
- **Integrated terminal** — resizable output panel with color-coded lines (errors, warnings, success, compiler messages) and a one-click copy of the full output
- **Serial Monitor** — list available ports, choose a baud rate, connect/disconnect, view incoming data live, and send messages to the board
- **Animated UI** — panel open/close (sidebar, terminal, serial monitor) and view transitions are handled with Framer Motion instead of abrupt show/hide
- **Custom window chrome** — draggable titlebar with minimize/maximize/close, built on Tauri's window APIs

## Tech Stack

**Frontend**
- React + TypeScript (Vite)
- Tailwind CSS
- Monaco Editor (`@monaco-editor/react`)
- Framer Motion for panel and transition animations
- `lucide-react` for icons
- Tauri JS APIs (`@tauri-apps/api`, `@tauri-apps/plugin-dialog`, `@tauri-apps/plugin-fs`)

**Backend**
- Rust + Tauri
- `serialport` crate for serial communication
- `serde` for serialization
- The Mello compiler binary, bundled as a Tauri resource and invoked as a subprocess

## Project Structure

```
mello-ide/
├── src/                           # React frontend
│   ├── App.tsx                    # App shell, state, and layout
│   ├── components/
│   │   ├── Titlebar.tsx           # Custom window bar (Verify/Upload/Terminal/Serial toggles)
│   │   ├── Sidebar.tsx            # File explorer, search, info, and settings panels
│   │   ├── CodeEditor.tsx         # Monaco editor + Mello language/theme/autocomplete
│   │   ├── Terminal.tsx           # Compiler output panel
│   │   ├── SerialMonitor.tsx      # Serial port connection & live data panel
│   │   └── ui/FileNode.tsx        # Recursive file/folder tree node
│   ├── hooks/
│   │   └── useLocalStorage.ts     # Persisted state (font settings, theme)
│   ├── utils/
│   │   └── themes.ts              # Monaco theme definitions (melloKids, girls)
│   └── main.tsx
└── src-tauri/
    ├── src/
    │   ├── main.rs
    │   ├── lib.rs                  # Tauri builder, plugins, managed state, command registry
    │   ├── state.rs                # SerialState, ProjectState
    │   └── commands/
    │       ├── fs.rs               # initialize_project, get_directory_files, read/save file
    │       ├── compiler.rs         # verify_code, upload_code (shells out to the Mello compiler)
    │       ├── serial.rs           # list_ports, open/close_serial, send_serial
    │       └── window_commands.rs  # close_splashscreen (splash → main window handoff)
    └── ...
```

## Tauri Commands

| Command | Description |
|---|---|
| `initialize_project` | Sets the active project root path |
| `get_directory_files` | Lists files/folders at a given path (sorted, folders first) |
| `read_file_content` | Reads a file's contents |
| `save_file_content` | Writes contents to a file |
| `verify_code` | Compiles the active file without uploading |
| `upload_code` | Compiles and flashes the active file to a connected board |
| `list_ports` | Lists available serial ports |
| `open_serial` | Opens a serial connection at a given baud rate and streams incoming data as `serial_data` events |
| `close_serial` | Closes the active serial connection |
| `send_serial` | Sends a message over the open serial connection |
| `close_splashscreen` | Closes the splash window and reveals the main window once the app is ready |

## Prerequisites

- [Node.js](https://nodejs.org/) and a package manager (npm/pnpm/yarn)
- [Rust](https://www.rust-lang.org/tools/install) and the [Tauri CLI](https://tauri.app/start/prerequisites/)
- The Mello compiler binary and its bundled tools (`arduino-cli`, `clang-format`), packaged under `src-tauri/resources` and resolved at runtime via Tauri's resource directory — no manual path setup needed

## Getting Started

```bash
# install frontend dependencies
npm install

# run in development mode
npm run tauri dev

# build a production bundle
npm run tauri build
```

## Mello Language Quick Example

```
pin = 13

loop:
    toggle(pin)
    wait(1s)
```

Mello source compiles down to native Arduino C++ (`-O3 -flto`, targeting `arduino:avr:uno` by default) with no interpreter or runtime layer.

## License

Mello Programming Language and the Mello IDE are original works developed for scientific research and educational purposes.

- **Usage:** you are free to view, study, use Mello in embedded systems like Arduino and ESP32, and learn from this codebase.
- **Restrictions:** unauthorized use of this source code in any academic competition (e.g., ISEF, science fairs), research submission, or commercial product is **strictly prohibited** without prior written consent from the author.
- **Attribution:** if you find this project useful for learning, please attribute the work to the original author, Mohammed Tamer Mohammed Ahmed El-Azab.

*Interested in collaborating or seeking permission for specific use? Please reach out directly (v3lk777@gmail.com).*