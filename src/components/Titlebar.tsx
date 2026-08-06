import { useState, useEffect } from 'react';
import { getCurrentWindow } from '@tauri-apps/api/window';
import { Minus, Maximize, Minimize, X, Play, Upload, Terminal as TerminalIcon, Loader2, Activity, Cpu, ChevronDown } from 'lucide-react';

const arduinoSupportedBoards = [
  { label: "Arduino UNO", value: "uno" },
  { label: "Arduino Nano", value: "nano" }
];

interface TitlebarProps {
  isTerminalOn: () => void;
  isSerialMonitorOn: () => void;
  onVerify: (board: string) => Promise<void> | void;
  onUpload: (board: string) => Promise<void> | void;
}

const appWindow = getCurrentWindow();

function Titlebar({ onVerify, onUpload, isTerminalOn, isSerialMonitorOn }: TitlebarProps) {
  const [board, setBoard] = useState<string>("uno");

  const [isVerifying, setIsVerifying] = useState<boolean>(false);
  const [isUploading, setIsUploading] = useState<boolean>(false);
  const [isMaximized, setIsMaximized] = useState<boolean>(false);

  const handleVerifyClick = async () => {
    setIsVerifying(true);

    try {
      if (onVerify) {
        await onVerify(board);
      }
    } catch (error) {
      console.error(error);
    } finally {
      setIsVerifying(false);
    }
  };

  const handleUploadClick = async () => {
    setIsUploading(true);

    try {
      if (onUpload) {
        await onUpload(board);
      }
    } catch (error) {
      console.error(error);
    } finally {
      setIsUploading(false);
    }
  };

  useEffect(() => {
    let unlisten: (() => void) | undefined;

    const setupListener = async () => {
      unlisten = await appWindow.onResized(async () => {
        const maximized = await appWindow.isMaximized();
        setIsMaximized(maximized);
      });
    };

    const checkInitialState = async () => {
      const maximized = await appWindow.isMaximized();
      setIsMaximized(maximized);
    };

    setupListener();
    checkInitialState();

    return () => {
      if (unlisten) unlisten();
    };
  }, []);

  const handleCloseWindow = async () => {
    await appWindow.close();
  }

  const handleMaximizeWindow = async () => {
    await appWindow.toggleMaximize();
  }

  const handleMinimizeWindow = async () => {
    await appWindow.minimize();
  }

  return (
    <div
      data-tauri-drag-region
      className="h-9 w-full bg-black backdrop-blur-md border-b border-white/10 flex items-center justify-between select-none pl-4 pr-2"
    >
      <div className="flex items-center gap-2">
        <span
          className="text-sm font-semibold tracking-wide text-neutral-300"
        > Mello IDE </span>

        <div className="h-4 w-px bg-white/10" />

        <div className="flex gap-1">
          <button
            title="Terminal"
            onClick={isTerminalOn}
            className="flex items-center gap-1 px-3 py-1.5 rounded-md text-neutral-300 hover:bg-white/5 transition-all"
          >
            <TerminalIcon size={14} /> <span className="text-xs font-bold">Terminal</span>
          </button>

          <button
            title="Serial Monitor"
            onClick={isSerialMonitorOn}
            className="flex items-center gap-1 px-3 py-1.5 rounded-md text-neutral-300 hover:bg-white/5 transition-all"
          >
            <Activity size={14} /> <span className="text-xs font-bold">Serial Monitor</span>
          </button>
        </div>
      </div>

      <div className="flex items-center">
        <div className="relative flex items-center">
          <Cpu size={14} className="pointer-events-none absolute left-3 text-neutral-500" />

          <select
            value={board}
            onChange={(e) => setBoard(e.target.value)}
            className="h-8 appearance-none rounded-md border border-white/10 bg-black pl-8 pr-9 text-xs font-medium text-neutral-200 transition-all duration-200 hover:border-white/20 hover:bg-white/5 focus:border-[#a855f7]/50 focus:ring-2 focus:ring-[#a855f7]/15 focus:outline-none cursor-pointer"
          >
            {arduinoSupportedBoards.map((board) => (
              <option key={board.value} value={board.value}>{board.label}</option>
            ))}
          </select>

          <ChevronDown size={14} className="pointer-events-none absolute right-3 text-neutral-500" />
        </div>

        <div className="flex items-center px-4 gap-1.5">
          <button
            title="Verify"
            onClick={() => handleVerifyClick()}
            disabled={isVerifying || isUploading}
            className="flex items-center gap-2 px-3 py-1.5 bg-green-600/20 text-green-400 hover:bg-green-600/30 rounded-md transition-colors border border-green-600/50"
          >
            {isVerifying ? (
              <Loader2 size={16} className="animate-spin" />
            ) : (
              <Play size={16} />
            )}

            <span className="text-xs font-bold">{isVerifying ? "Verifying" : "Verify"}</span>
          </button>

          <button
            title="Upload"
            onClick={() => handleUploadClick()}
            disabled={isUploading || isVerifying}
            className="flex items-center gap-2 px-3 py-1.5 bg-blue-600/20 text-blue-400 hover:bg-blue-600/30 rounded-md transition-colors border border-blue-600/50"
          >

            {isUploading ? (
              <Loader2 size={16} className="animate-spin" />
            ) : (
              <Upload size={16} />
            )}

            <span className="text-xs font-bold">{isUploading ? "Uploading" : "Upload"}</span>
          </button>

          <div className="h-4 w-px bg-white/10" />
        </div>

        <button
          title="Minimize"
          onClick={() => handleMinimizeWindow()}
          className="h-8 w-10 flex items-center justify-center text-neutral-400 hover:text-yellow-500 hover:bg-yellow-500/20 transition-colors rounded-md"
        >
          <Minus size={14} strokeWidth={2.5} />
        </button>

        <button
          title={isMaximized ? "Restore" : "Maximize"}
          onClick={() => handleMaximizeWindow()}
          className="h-8 w-10 flex items-center justify-center text-neutral-400 hover:text-green-500 hover:bg-green-500/20 transition-colors rounded-md"
        >
          {isMaximized ? (
            <Minimize size={14} strokeWidth={2.5} />
          ) : (
            <Maximize size={14} strokeWidth={2.5} />
          )}
        </button>

        <button
          title="Close"
          onClick={() => handleCloseWindow()}
          className="h-8 w-10 flex items-center justify-center text-neutral-400 hover:text-red-500 hover:bg-red-500/20 transition-all rounded-md"
        >
          <X size={16} strokeWidth={2.5} />
        </button>
      </div>
    </div>
  );
}

export default Titlebar;