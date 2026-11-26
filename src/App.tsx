import "./App.css";

import { useState, useEffect, useCallback, useRef } from "react";
import { invoke } from "@tauri-apps/api/core";
import { listen } from "@tauri-apps/api/event";
import { AnimatePresence, motion } from "framer-motion";
import { useLocalStorage } from "./hooks/useLocalStorage";

import { toast } from "sonner";
import { LuFolders } from "react-icons/lu";

import Tabbar, { type EditorTab } from "./components/Tabbar";
import Sidebar from "./components/Sidebar";
import Terminal from "./components/Terminal";
import Titlebar from "./components/Titlebar";
import CodeEditor from "./components/CodeEditor";
import SerialMonitor from "./components/SerialMonitor";

interface CompileResult {
  success: boolean;
}

interface OpenFileTab extends EditorTab {
  content: string;
}

function App() {
  const [code, setCode] = useState<string>("fn start():\n\t# Put your setup code here, to run once\n\nfn loop():\n\t# Put your main code here, to run repeatedly");
  const [currentFilePath, setCurrentFilePath] = useState<string>("");

  const [openTabs, setOpenTabs] = useState<OpenFileTab[]>([]);

  const [fontSize, setFontSize] = useLocalStorage("fontSize", 14);
  const [lineHeight, setLineHeight] = useLocalStorage("lineHeight", 20);
  const [fontFamily, setFontFamily] = useLocalStorage("fontFamily", "'Cascadia Code', monospace");

  const [theme, setTheme] = useLocalStorage("theme", "melloKids");

  const [useMinimap, onUseMinimapChange] = useLocalStorage("useMinimap", false);

  const [terminalActive, setTerminalActive] = useState<boolean>(false);
  const [serialMonitorActive, setSerialMonitorActive] = useState<boolean>(false);
  const [terminalOutput, setTerminalOutput] = useState<string[]>([]);

  const [currentTab, setCurrentTab] = useState<string>("");

  const saveQueueRef = useRef<Promise<void>>(Promise.resolve());
  const fileRequestRef = useRef<number>(0);

  const saveFileContent = useCallback(
    (path: string, content: string): Promise<void> => {
      const operation = saveQueueRef.current.then(
        () => invoke<void>("save_file_content", { path, content }),
        () => invoke<void>("save_file_content", { path, content })
      );

      saveQueueRef.current = operation;

      return operation;
    },
    []
  );

  const saveCurrentFile = useCallback(async () => {
    if (!currentFilePath) return;

    const path = currentFilePath;
    const content = code;

    await saveFileContent(path, content);

    setOpenTabs((previous) =>
      previous.map((tab) =>
        tab.id === path && tab.content === content
          ? { ...tab, isDirty: false }
          : tab
      )
    );
  }, [currentFilePath, code, saveFileContent]);

  const onFolderOpen = async (_path: string) => {
    const requestId = ++fileRequestRef.current;

    try {
      for (const tab of openTabs) {
        const content = tab.id === currentFilePath
          ? code
          : tab.content;

        await saveFileContent(tab.id, content);
      }

      if (requestId !== fileRequestRef.current) return;

      setOpenTabs([]);
      setCode("");
      setCurrentFilePath("");
    } catch (error) {
      toast.error(`Could not save files: ${error}`);
    }
  };

  const onFileClick = async (path: string) => {
    const requestId = ++fileRequestRef.current;

    if (path === currentFilePath) return;

    try {
      await saveCurrentFile();

      if (requestId !== fileRequestRef.current) return;

      const existingTab = openTabs.find(
        (tab) => tab.id === path
      );

      if (existingTab) {
        setCurrentFilePath(existingTab.id);
        setCode(existingTab.content);
        return;
      }

      const content = await invoke<string>("read_file_content", { path });

      if (requestId !== fileRequestRef.current) return;

      const fileName = path.split(/[\\/]/).pop() || path;

      const newTab: OpenFileTab = {
        id: path,
        name: fileName,
        content,
        isDirty: false,
      };

      setOpenTabs((previous) => [...previous, newTab]);
      setCode(content);
      setCurrentFilePath(path);
    } catch (error) {
      if (requestId === fileRequestRef.current) {
        toast.error(`Could not open file: ${error}`);
      }
    }
  };

  const onTabSelect = async (id: string) => {
    const requestId = ++fileRequestRef.current;

    if (id === currentFilePath) return;

    const targetTab = openTabs.find(
      (tab) => tab.id === id
    );

    if (!targetTab) return;

    try {
      await saveCurrentFile();

      if (requestId !== fileRequestRef.current) return;

      setCurrentFilePath(targetTab.id);
      setCode(targetTab.content);
    } catch (error) {
      toast.error(`Could not switch files: ${error}`);
    }
  };

  const onTabClose = async (id: string) => {
    const tabIndex = openTabs.findIndex(
      (tab) => tab.id === id
    );

    const tabToClose = openTabs[tabIndex];

    if (!tabToClose) return;

    try {
      const content = id === currentFilePath
        ? code
        : tabToClose.content;

      await saveFileContent(id, content);

      const remainingTabs = openTabs.filter(
        (tab) => tab.id !== id
      );

      setOpenTabs(remainingTabs);

      if (id === currentFilePath) {
        const nextTab = remainingTabs[tabIndex] ??
          remainingTabs[tabIndex - 1] ??
          null;

        setCurrentFilePath(nextTab?.id ?? "");
        setCode(nextTab?.content ?? "");
      }
    } catch (error) {
      toast.error(`Could not close file: ${error}`);
    }
  };

  const handleCodeChange = (newCode: string) => {
    setCode(newCode);

    setOpenTabs((previous) =>
      previous.map((tab) =>
        tab.id === currentFilePath
          ? {
            ...tab,
            content: newCode,
            isDirty: true,
          }
          : tab
      )
    );
  };

  useEffect(() => {
    if (!currentFilePath) return;

    const activeTab = openTabs.find(
      (tab) => tab.id === currentFilePath
    );

    if (!activeTab?.isDirty) return;

    const path = currentFilePath;
    const content = code;

    const timeoutId = setTimeout(() => {
      saveFileContent(path, content)
        .then(() => {
          setOpenTabs((previous) =>
            previous.map((tab) =>
              tab.id === path && tab.content === content
                ? { ...tab, isDirty: false }
                : tab
            )
          );
        })
        .catch((error: unknown) => {
          toast.error(`Auto-save failed: ${error}`);
        });
    }, 100);

    return () => {
      clearTimeout(timeoutId);
    };
  }, [code, currentFilePath, openTabs, saveFileContent]);

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
      await saveCurrentFile();

      const result = await invoke<CompileResult>("verify_code", {
        sourcePath: currentFilePath,
        board: board
      });

      if (!result.success) {
        toast.error("Verification failed. Check terminal output.", { id: onVerifyToast });

        return;
      }

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
      await saveCurrentFile();

      const result = await invoke<CompileResult>("upload_code", {
        sourcePath: currentFilePath,
        board: board
      });

      if (!result.success) {
        toast.error("Verification failed. Check terminal output.", { id: onUploadToast });

        return;
      }

      toast.success("Verified", { id: onUploadToast });

      await new Promise(resolve => setTimeout(resolve, 2000));

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
                  className="absolute inset-0 flex flex-col"
                >
                  <Tabbar
                    tabs={openTabs}
                    activeTabId={currentFilePath}
                    onTabSelect={onTabSelect}
                    onTabClose={onTabClose}
                  />

                  <div className="flex-1 min-h-0 overflow-hidden">
                    <CodeEditor
                      code={code}
                      useMinimap={useMinimap}
                      onChange={handleCodeChange}
                      fontFamily={fontFamily}
                      fontSize={fontSize}
                      lineHeight={lineHeight}
                      theme={theme}
                    />
                  </div>
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
                  <LuFolders size={150} />

                  <span className="text-neutral-400">No folder or file opene</span>

                  <div className="flex items-center gap-1">
                    <span className="text-xs text-neutral-600">Open a folder and select a file to start coding with</span>
                    <span className="text-violet-400">Mello</span>
                  </div>
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