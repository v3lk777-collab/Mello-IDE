import "./App.css";

import { useState } from "react";
import { TypeAnimation } from "react-type-animation";
import { AnimatePresence, motion } from "framer-motion";
import { useLocalStorage } from "./hooks/useLocalStorage";

import Sidebar from "./components/Sidebar";
import Terminal from "./components/Terminal";
import Titlebar from "./components/Titlebar";
import { invoke } from "@tauri-apps/api/core";
import CodeEditor from "./components/CodeEditor";
import SerialMonitor from "./components/SerialMonitor";

interface CompileResult {
  success: boolean;
  output: string;
  error: string;
}

function App() {
  const [code, setCode] = useState<string>("");
  const [currentFilePath, setCurrentFilePath] = useState<string>("");

  const [fontSize, setFontSize] = useLocalStorage("fontSize", 15);
  const [lineHeight, setLineHeight] = useLocalStorage("lineHeight", 22);
  const [fontFamily, setFontFamily] = useLocalStorage(
    "fontFamily",
    "'Cascadia Code', monospace"
  );

  const [theme, setTheme] = useLocalStorage("theme", "melloKids");

  const [terminalActive, setTerminalActive] = useState<boolean>(false);
  const [serialMonitorActive, setSerialMonitorActive] = useState<boolean>(false);
  const [terminalOutput, setTerminalOutput] = useState<string[]>([]);

  const [currentTab, setCurrentTab] = useState<string>("");

  const onFolderOpen = (_path: string) => {
    setCode("");
    setCurrentFilePath("");
  };

  const onFileClick = async (path: string) => {
    if ((path != currentFilePath) && currentFilePath) {
      await invoke("save_file_content", { path: currentFilePath, content: code });
    }

    const content = await invoke<string>("read_file_content", { path });
    setCode(content);
    setCurrentFilePath(path);
  };

  const runResult = (result: CompileResult) => {
    const lines = (result.success ? result.output : result.error).split("\n").filter(Boolean);
    setTerminalOutput((prev) => [...prev, ...lines]);
    setTerminalActive(true);
  };

  const onVerify = async () => {
    setTerminalActive(true);
    setCurrentTab("terminal");
    setTerminalOutput([]);

    if (!currentFilePath) return;

    await invoke("save_file_content", { path: currentFilePath, content: code });
    const result = await invoke<CompileResult>("verify_code", { sourcePath: currentFilePath });
    runResult(result);
  };

  const onUpload = async () => {
    setTerminalActive(true);
    setCurrentTab("terminal");
    setTerminalOutput([]);

    if (!currentFilePath) return;

    await invoke("save_file_content", { path: currentFilePath, content: code });
    const result = await invoke<CompileResult>("upload_code", { sourcePath: currentFilePath });
    runResult(result);
  };

  return (
    <main className="flex h-screen w-screen flex-col overflow-hidden select-none">
      <div className="w-full shrink-0">
        <Titlebar
          onVerify={onVerify}
          onUpload={onUpload}

          isTerminalOn={() => {
            setTerminalActive(!terminalActive);
            setCurrentTab(!terminalActive ? "terminal" : "");
          }}

          isSerialMonitorOn={() => {
            setSerialMonitorActive(!serialMonitorActive);
            setCurrentTab(!serialMonitorActive ? "serial" : "");
          }}
        />
      </div>

      <div className="flex flex-1 w-full overflow-hidden">
        <Sidebar
          onFolderOpen={onFolderOpen}
          onFileClick={onFileClick}
          onFontFamilyChange={setFontFamily}
          onFontSizeChange={setFontSize}
          onLineHeightChange={setLineHeight}
          lineHeight={lineHeight}
          fontFamily={fontFamily}
          fontSize={fontSize}
          theme={theme}
          onChangeTheme={setTheme}
        />

        <div className="flex flex-1 flex-col overflow-hidden">
          <div className="flex-1 overflow-hidden relative">
            {currentFilePath ? (
              <AnimatePresence initial={false}>
                <motion.div
                  key={currentFilePath}
                  initial={{ opacity: 0 }}
                  animate={{ opacity: 1 }}
                  exit={{ opacity: 0 }}
                  transition={{ duration: 0.75, ease: [0.4, 0, 0.2, 1] }}
                  className="absolute inset-0"
                >
                  <CodeEditor
                    key="editor"
                    code={code}
                    onChange={setCode}
                    fontFamily={fontFamily}
                    fontSize={fontSize}
                    lineHeight={lineHeight}
                    theme={theme}
                  />
                </motion.div>
              </AnimatePresence>
            ) : (
              <motion.div
                key="empty-state"
                initial={{ opacity: 0 }}
                animate={{ opacity: 1 }}
                exit={{ opacity: 0 }}
                transition={{ duration: 0.2, ease: [0.4, 0, 0.2, 1] }}
                className="flex flex-col h-full w-full items-center justify-center gap-2 text-neutral-600 text-sm"
              >
                <div className="flex flex-col w-full items-center gap-2">
                  <span className="text-neutral-400">No folder or file open</span>
                  <div className="flex items-center gap-1">
                    <span className="text-xs text-neutral-600">Open a folder and select a file to start coding with</span>

                    <TypeAnimation
                      sequence={[
                        "Mello", 1500,
                        "Arduino", 1500,
                      ]}

                      wrapper="span"
                      speed={45}
                      repeat={Infinity}
                      cursor
                      className="text-violet-400"
                    />
                  </div>
                </div>

                <div className="flex flex-col absolute w-full items-center bottom-0 mb-2">
                  <TypeAnimation
                    sequence={[
                      "I was listening to 'This is me trying' by Taylor Swift", 1500,
                      "and 'Ocean Eyes' by Billie Eilish", 1500,
                      "when I did this", 1500,
                    ]}

                    wrapper="span"
                    speed={45}
                    repeat={Infinity}
                    cursor
                  />
                </div>
              </motion.div>
            )}
          </div>

          <AnimatePresence initial={false}>
            {(terminalActive && currentTab === "terminal") && (
              <motion.div
                key="terminal"
                initial={{ height: 0, opacity: 0 }}
                animate={{ height: "auto", opacity: 1 }}
                exit={{ height: 0, opacity: 0 }}
                transition={{ duration: 0.25, ease: [0.4, 0, 0.2, 1] }}
                className="overflow-hidden"
              >
                <Terminal
                  output={terminalOutput}
                  terminalIsActive={terminalActive}
                  onClose={() => setTerminalActive(false)}
                  onClear={() => setTerminalOutput([])}
                />
              </motion.div>
            )}
          </AnimatePresence>

          <AnimatePresence initial={false}>
            {(serialMonitorActive && currentTab === "serial") && (
              <motion.div
                key="serial"
                initial={{ height: 0, opacity: 0 }}
                animate={{ height: "auto", opacity: 1 }}
                exit={{ height: 0, opacity: 0 }}
                transition={{ duration: 0.25, ease: [0.4, 0, 0.2, 1] }}
                className="overflow-hidden"
              >
                <SerialMonitor
                  serialMonterActive={serialMonitorActive}
                  onClose={() => setSerialMonitorActive(false)}
                />
              </motion.div>
            )}
          </AnimatePresence>
        </div>
      </div>
    </main>
  );
}

export default App;