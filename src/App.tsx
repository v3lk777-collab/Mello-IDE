import "./App.css";
import Sidebar from "./components/Sidebar";
import Terminal from "./components/Terminal";
import Titlebar from "./components/Titlebar";
import { invoke } from "@tauri-apps/api/core";
import { listen } from "@tauri-apps/api/event";
import CodeEditor from "./components/CodeEditor";
import { useEffect, useRef, useState } from "react";
import SerialMonitor from "./components/SerialMonitor";
import { getCurrentWindow } from "@tauri-apps/api/window";
import { SquareDashedMousePointer, MousePointerClick } from 'lucide-react';

function App() {
  const [currentCode, setCurrentCode] = useState("");
  const [projectPath, setProjectPath] = useState<string | null>(null);
  const [activeFilePath, setActiveFilePath] = useState<string | null>(null);
  const [terminalOutput, setTerminalOutput] = useState<string[]>([]);
  const [saveStatus, setSaveStatus] = useState<"saved" | "unsaved" | "saving">("saved");
  const [terminalIsActive, setTerminalIsActive] = useState<boolean>(true);
  const [serialMonitorIsActive, setSerialMonitorIsActive] = useState<boolean>(true);

  const [fontSize, setFontSize] = useState<number>(17);
  const [fontFamily, setFontFamily] = useState<string>("'JetBrains Mono', monospace");
  const [lineHeight, setLineHeight] = useState<number>(23);

  const activeFilePathRef = useRef(activeFilePath);
  const currentCodeRef = useRef(currentCode);
  const autoSaveTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  useEffect(() => {
    activeFilePathRef.current = activeFilePath;
  }, [activeFilePath]);

  useEffect(() => {
    currentCodeRef.current = currentCode;
  }, [currentCode]);

  useEffect(() => {
    const unlisten = listen<string>("terminal-output", (event) => {
      setTerminalOutput(prev => [...prev, event.payload]);
    });
    return () => { unlisten.then(f => f()); };
  }, []);

  const saveFile = async (path: string, content: string) => {
    try {
      setSaveStatus("saving");
      await invoke("save_file", { path, content });
      setSaveStatus("saved");
    } catch (error) {
      console.error("Save failed:", error);
      setSaveStatus("unsaved");
    }
  };

  const handleCodeChange = (newCode: string) => {
    setCurrentCode(newCode);
    setSaveStatus("unsaved");

    if (autoSaveTimer.current) {
      clearTimeout(autoSaveTimer.current);
    }

    autoSaveTimer.current = setTimeout(() => {
      if (activeFilePathRef.current) {
        saveFile(activeFilePathRef.current, newCode);
      }
    }, 1500);
  };

  const handleFileClick = async (path: string) => {
    if (activeFilePath === path) return;

    try {
      if (activeFilePathRef.current) {
        if (autoSaveTimer.current) clearTimeout(autoSaveTimer.current);
        await saveFile(activeFilePathRef.current, currentCodeRef.current);
      }

      const content = await invoke<string>("read_file", { path });
      setCurrentCode(content);
      setActiveFilePath(path);
      setSaveStatus("saved");
    } catch (error) {
      console.error("Failed to switch/save file:", error);
    }
  };

  useEffect(() => {
    const handleKeyDown = async (e: KeyboardEvent) => {
      if ((e.ctrlKey || e.metaKey) && e.key === "s") {
        e.preventDefault();
        if (autoSaveTimer.current) clearTimeout(autoSaveTimer.current);
        if (activeFilePathRef.current) {
          await saveFile(activeFilePathRef.current, currentCodeRef.current);
        }
      }
    };
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, []);

  useEffect(() => {
    const appWindow = getCurrentWindow();

    const unlisten = appWindow.onCloseRequested(async (event) => {
      event.preventDefault();
      if (autoSaveTimer.current) clearTimeout(autoSaveTimer.current);
      if (activeFilePathRef.current) {
        await saveFile(activeFilePathRef.current, currentCodeRef.current);
      }
      await appWindow.destroy();
    });

    return () => { unlisten.then(f => f()); };
  }, []);

  const handleVerify = async () => {
    if (!activeFilePathRef.current) return;
    await saveFile(activeFilePathRef.current, currentCodeRef.current);

    try {
      await invoke("run_command", {
        action: "verify",
        filePath: activeFilePathRef.current
      });
    } catch (error) {
      setTerminalOutput(prev => [...prev, `Error: ${error}`]);
    }
  };

  const handleUpload = async () => {
    if (!activeFilePathRef.current) return;
    if (autoSaveTimer.current) clearTimeout(autoSaveTimer.current);
    await saveFile(activeFilePathRef.current, currentCodeRef.current);

    try {
      await invoke("run_command", {
        action: "upload",
        filePath: activeFilePathRef.current
      });
    } catch (error) {
      setTerminalOutput(prev => [...prev, `Error: ${error}`]);
    }
  };

  return (
    <div className="flex flex-col h-screen w-scree overflow-hidden">
      <Titlebar
        onVerify={handleVerify}
        onUpload={handleUpload}
        isTerminalOn={() => setTerminalIsActive(!terminalIsActive)}
        isSerialMonitorOn={() => setSerialMonitorIsActive(!serialMonitorIsActive)}
      />

      <div className="flex flex-1 overflow-hidden">
        <Sidebar
          onFolderOpen={(path) => setProjectPath(path)}
          onFileClick={handleFileClick}
          fontSize={fontSize}
          fontFamily={fontFamily}
          lineHeight={lineHeight}
          onFontSizeChange={setFontSize}
          onFontFamilyChange={setFontFamily}
          onLineHeightChange={setLineHeight}
        />

        <div className="flex-1 flex flex-col min-w-0">
          {projectPath ? (
            activeFilePath ? (
              <div className="flex flex-col flex-1 overflow-hidden">
                <div className="flex items-center justify-end px-3 py-1 bg-neutral-900 border-b border-neutral-800 text-xs">
                  {saveStatus === "saving" && (
                    <span className="text-yellow-400">Saving...</span>
                  )}
                  {saveStatus === "saved" && (
                    <span className="text-green-500">Saved ✓</span>
                  )}
                  {saveStatus === "unsaved" && (
                    <span className="text-neutral-500">Unsaved changes</span>
                  )}
                </div>
                <CodeEditor
                  code={currentCode}
                  onChange={handleCodeChange}
                  fontSize={fontSize}
                  fontFamily={fontFamily}
                  lineHeight={lineHeight}
                />
              </div>
            ) : (
              <div className="flex flex-col h-full items-center justify-center text-neutral-500 gap-4">
                <MousePointerClick size={150} />
                <p>Select a file to start coding with Mello...</p>
              </div>
            )
          ) : (
            <div className="flex flex-col h-full items-center justify-center text-neutral-500 gap-4">
              <SquareDashedMousePointer size={150}/>
              <p>Open a folder to start coding with Mello...</p>
            </div>
          )}
          
          <div className="w-full">
            {serialMonitorIsActive ? (
              <Terminal
                output={terminalOutput}
                terminalIsActive={terminalIsActive}
                onClose={() => setTerminalIsActive(!terminalIsActive)}
                onClear={() => setTerminalOutput([])}
              />
            ) : (
              <SerialMonitor
                onClose={() => setSerialMonitorIsActive(!serialMonitorIsActive)}
                serialMonterActive={serialMonitorIsActive}
              />
            )}
          </div>
        </div>
      </div>
    </div>
  );
}

export default App;