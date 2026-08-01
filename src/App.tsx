import "./App.css";

import { useState } from "react";
import Sidebar from "./components/Sidebar";
import Terminal from "./components/Terminal";
import Titlebar from "./components/Titlebar";
import { invoke } from "@tauri-apps/api/core";
import CodeEditor from "./components/CodeEditor";
import SerialMonitor from "./components/SerialMonitor";
import { useLocalStorage } from "./hooks/useLocalStorage";

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
    if (!currentFilePath) return;

    await invoke("save_file_content", { path: currentFilePath, content: code });
    const result = await invoke<CompileResult>("verify_code", { sourcePath: currentFilePath });
    runResult(result);
  };

  const onUpload = async () => {
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
              <CodeEditor
                code={code}
                onChange={setCode}
                fontFamily={fontFamily}
                fontSize={fontSize}
                lineHeight={lineHeight}
                theme={theme}
              />
            ) : (
              <div className="flex flex-col h-full w-full items-center justify-center gap-2 text-neutral-600 text-sm">
                <span className="text-neutral-400">No file open</span>
                <span className="text-xs text-neutral-600">Open a folder and select a file to start editing</span>
              </div>
            )}
          </div>

          {currentTab == "terminal" &&
            <Terminal
              output={terminalOutput}
              terminalIsActive={terminalActive}
              onClose={() => setTerminalActive(false)}
              onClear={() => setTerminalOutput([])}
            />
          }

          {currentTab == "serial" &&
            <SerialMonitor
              serialMonterActive={serialMonitorActive}
              onClose={() => setSerialMonitorActive(false)}
            />
          }
        </div>
      </div>
    </main>
  );
}

export default App;