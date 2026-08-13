import "./App.css";

import { useState, useEffect } from "react";
import { invoke } from "@tauri-apps/api/core";
import { listen } from "@tauri-apps/api/event";
import { TypeAnimation } from "react-type-animation";
import { AnimatePresence, motion } from "framer-motion";
import { useLocalStorage } from "./hooks/useLocalStorage";

import { toast } from "sonner";
import Sidebar from "./components/Sidebar";
import Terminal from "./components/Terminal";
import Titlebar from "./components/Titlebar";
import CodeEditor from "./components/CodeEditor";
import SerialMonitor from "./components/SerialMonitor";

interface CompileResult {
  success: boolean;
}

function App() {
  const [code, setCode] = useState<string>("");
  const [currentFilePath, setCurrentFilePath] = useState<string>("");

  const [fontSize, setFontSize] = useLocalStorage("fontSize", 14);
  const [lineHeight, setLineHeight] = useLocalStorage("lineHeight", 20);
  const [fontFamily, setFontFamily] = useLocalStorage("fontFamily", "'Cascadia Code', monospace");

  const [theme, setTheme] = useLocalStorage("theme", "melloKids");

  const [useMinimap, onUseMinimapChange] = useLocalStorage("useMinimap", false);

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

  useEffect(() => {
    if (!currentFilePath) {
      return;
    }

    const timeoutId = setTimeout(() => {
      invoke("save_file_content", { path: currentFilePath, content: code });
    }, 100);

    return () => {
      clearTimeout(timeoutId);
    };
  }, [code, currentFilePath]);

  useEffect(() => {
    let isActive = true;
    let unlistenFn: (() => void) | undefined;

    listen<string>("compile_output", (event) => {
      setTerminalOutput((prev) => [...prev, event.payload]);
    }).then((fn) => {
      if (isActive) {
        unlistenFn = fn;
      } else {
        fn();
      }
    });

    return () => {
      isActive = false;
      unlistenFn?.();
    };
  }, []);

  const onVerify = async (board: string) => {
    setTerminalActive(true);
    setCurrentTab("terminal");
    setTerminalOutput([]);

    const onVerifyToast = toast.loading("Verifying...");

    if (!currentFilePath) {
      toast.error("No file is open to verify", { id: onVerifyToast });
      return;
    }

    try {
      await invoke("save_file_content", { path: currentFilePath, content: code });

      await invoke<CompileResult>("verify_code", {
        sourcePath: currentFilePath,
        board: board
      });

      toast.success("Verified", { id: onVerifyToast });
    } catch (e) {
      toast.error(`Error: ${e}`, { id: onVerifyToast });
    }
  };

  const onUpload = async (board: string) => {
    await invoke("close_serial").catch(() => { });
    setSerialMonitorActive(false);

    setTerminalActive(true);
    setCurrentTab("terminal");
    setTerminalOutput([]);

    const onUploadToast = toast.loading("Uploading...");

    if (!currentFilePath) {
      toast.error("No file is open to upload", { id: onUploadToast });
      return;
    }

    try {
      await invoke("save_file_content", { path: currentFilePath, content: code });

      await invoke<CompileResult>("upload_code", {
        sourcePath: currentFilePath,
        board: board
      });

      toast.success("Uploaded", { id: onUploadToast });

      setTimeout(() => {}, 1500);

      setTerminalActive(false);

      setSerialMonitorActive(true);
      setCurrentTab("serial");
    } catch (e) {
      toast.error(`Error: ${e}`, { id: onUploadToast });
    }
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

      <div className="flex flex-1 w-full">
        <Sidebar
          useMinimap={useMinimap}
          onUseMinimapChange={onUseMinimapChange}
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
                  transition={{ duration: 0.2, ease: [0.4, 0, 0.2, 1] }}
                  className="absolute inset-0"
                >
                  <CodeEditor
                    key="editor"
                    code={code}
                    useMinimap={useMinimap}
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
                transition={{ duration: 2, ease: [0.4, 0, 0.2, 1] }}
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
                        "Speed", 1500,
                        "Performance", 1500,
                      ]}

                      wrapper="span"
                      speed={30}
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
                    speed={60}
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
                transition={{ duration: 0.40, ease: [0.4, 0, 0.2, 1] }}
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
                transition={{ duration: 0.40, ease: [0.4, 0, 0.2, 1] }}
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