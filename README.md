# Mello IDE

[![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)](https://www.rust-lang.org)
[![Tauri](https://img.shields.io/badge/Tauri-24C8DB?style=for-the-badge&logo=tauri&logoColor=white)](https://tauri.app)
[![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white)](https://www.typescriptlang.org)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-06B6D4?style=for-the-badge&logo=tailwindcss&logoColor=white)](https://tailwindcss.com)
[![Node.js](https://img.shields.io/badge/Node.js-5FA04E?style=for-the-badge&logo=node.js&logoColor=white)](https://nodejs.org)
[![npm](https://img.shields.io/badge/npm-CB3837?style=for-the-badge&logo=npm&logoColor=white)](https://www.npmjs.com)
[![Monaco Editor](https://img.shields.io/badge/Monaco_Editor-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white)](https://microsoft.github.io/monaco-editor/)
[![React](https://img.shields.io/badge/React-61DAFB?style=for-the-badge&logo=react&logoColor=black)](https://react.dev)
[![Vite](https://img.shields.io/badge/Vite-646CFF?style=for-the-badge&logo=vite&logoColor=white)](https://vitejs.dev)

A lightweight, purpose-built desktop IDE for the **Mello** programming language — an indentation-based, Python-like language that transpiles to native Arduino C++ with zero runtime overhead. Mello IDE wraps the Mello compiler in a fast, themeable editor with built-in file management, a terminal, and a serial monitor for working directly with Arduino boards.

Built with **Tauri**, **Rust**, and **React + TypeScript**.

---

## Features

- **Monaco-based code editor** with a custom Mello language definition:
  - Syntax highlighting for definitions (`start`, `loop`, `func`), control flow (`if`, `elif`, `else`, `while`, `for`, `repeat`, `every`, `return`, `or`, `and`, `not`, `in`, `range`, `break`, `continue`, `pass`), and I/O calls (`turn_on`, `turn_off`, `toggle`, `wait`, `write`, `read`, `scale`, `on_press`, `sleep`, and the `serial.*` family)
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

---

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

---

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

---

## Prerequisites

- [Node.js](https://nodejs.org/) and a package manager (npm/pnpm/yarn)
- [Rust](https://www.rust-lang.org/tools/install) and the [Tauri CLI](https://tauri.app/start/prerequisites/)
- The Mello compiler binary and its bundled tools (`arduino-cli`, `clang-format`), packaged under `src-tauri/resources` and resolved at runtime via Tauri's resource directory — no manual path setup needed

---

## Performance

Mello IDE is built on **Tauri** instead of Electron, which means it renders
through the operating system's native WebView instead of bundling an entire
Chromium runtime. In practice, that means a smaller installer, a faster
cold start, and a lighter memory footprint than Arduino IDE 2.x — without
giving up any editor functionality.

| Metric | Mello IDE | Arduino IDE 2.x |
|---|---|---|
| Installer size | ~X MB | ~500+ MB |
| Cold start time | ~X sec | ~X sec |
| Idle RAM usage | ~X MB | ~X MB |

*(Measured on [your machine specs — CPU/RAM/OS], comparing Mello IDE
vX.X.X against Arduino IDE 2.X.X.)*

<p align="center">
  <img src="/public/images/Screenshot 2026-08-01 161442.jpg" width="45%" alt="Mello IDE cold start time" />
  <img src="/public/images/Screenshot 2026-08-01 161454.jpg" width="45%" alt="Mello IDE idle memory usage" />
</p>
<p align="center">
  <img src="/public/images/Screenshot 2026-08-01 161503.jpg" width="45%" alt="Mello IDE installer size" />
  <img src="/public/images/Screenshot 2026-08-09 214006.jpg" width="45%" alt="Mello IDE vs Arduino IDE comparison" />
</p>

---

## Getting Started

```bash
# install frontend dependencies
npm install

# run in development mode
npm run tauri dev

# build a production bundle
npm run tauri build
```

---

## Mello Language Quick Example

```
pin = 13

loop:
    toggle(pin)
    wait(1s)
```

Mello source compiles down to native Arduino C++ (`-O3 -flto`, targeting `arduino:avr:uno` by default) with no interpreter or runtime layer.

---

## License

Mello Programming Language and the Mello IDE are original works developed for scientific research and educational purposes.

- **Usage:** you are free to view, study, use Mello in embedded systems like Arduino and ESP32, and learn from this codebase.
- **Restrictions:** unauthorized use of this source code in any academic competition (e.g., ISEF, science fairs), research submission, or commercial product is **strictly prohibited** without prior written consent from the author.
- **Attribution:** if you find this project useful for learning, please attribute the work to the original author, Mohammed Tamer Mohammed Ahmed El-Azab.

*Interested in collaborating or seeking permission for specific use? Please reach out directly (v3lk777@gmail.com).*