import { useState, useEffect } from 'react';
import { getCurrentWindow } from '@tauri-apps/api/window';
import { Minus, Maximize, Minimize, X, Play, Upload, Terminal as TerminalIcon, Loader2, Activity } from 'lucide-react';

interface TitlebarProps {
  onVerify: () => Promise<void> | void;
  onUpload: () => Promise<void> | void;
  isTerminalOn: () => void;
  isSerialMonitorOn: () => void;
}

const appWindow = getCurrentWindow();

function Titlebar({ onVerify, onUpload, isTerminalOn, isSerialMonitorOn } : TitlebarProps) {
  const [isVerifying, setIsVerifying] = useState(false);
  const [isUploading, setIsUploading] = useState(false);
  const [isMaximized, setIsMaximized] = useState(false);

  const handleVerifyClick = async () => {
    setIsVerifying(true);

    try {
      if (onVerify) {
        await onVerify(); 
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
        await onUpload(); 
      }
    } catch (error) {
      console.error(error);
    } finally {
      setIsUploading(false);
    }
  };

  useEffect(() => {
    const unlistenPromise = appWindow.onResized(async () => {
      const maximized = await appWindow.isMaximized();
      setIsMaximized(maximized);
    });

    const checkInitialState = async () => {
      const maximized = await appWindow.isMaximized();
      setIsMaximized(maximized);
    };
    checkInitialState();

    return () => {
      unlistenPromise.then((unlisten) => unlisten());
    };
  }, []);

  const handleCloseWindow = () => {
    appWindow.destroy();
  }

  const handleMaximizeWindow = () => {
    appWindow.toggleMaximize();
  }

  const handleMinimizeWindow = () => {
    appWindow.minimize();
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
        
        <div className="h-4 w-[1px] bg-white/10" />

        <div className = "flex gap-1">
          <button
            onClick={isTerminalOn}
            className="flex items-center gap-1 px-3 py-1.5 rounded-md text-neutral-300 hover:bg-white/5 transition-all"
          >
            <TerminalIcon size={14} /> <span className="text-xs font-bold">Terminal</span>
          </button>

          <button
            onClick={isSerialMonitorOn}
            className="flex items-center gap-1 px-3 py-1.5 rounded-md text-neutral-300 hover:bg-white/5 transition-all"
          >
            <Activity size={14} /> <span className="text-xs font-bold">Serial Monitor</span>
          </button>
        </div>
      </div>

      <div className="flex items-center">
        <div className="flex items-center px-4 gap-1.5">
          <button 
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
          <div className="h-4 w-[1px] bg-white/10" />
        </div>

        <button
          onClick={() => handleMinimizeWindow()}
          className="h-8 w-10 flex items-center justify-center text-neutral-400 hover:text-white hover:bg-white/10 transition-colors rounded-md"
        >
          <Minus size={14} strokeWidth={2.5} />
        </button>
        <button
          onClick={() => handleMaximizeWindow()}
          className="h-8 w-10 flex items-center justify-center text-neutral-400 hover:text-white hover:bg-white/10 transition-colors rounded-md"
        >
          {isMaximized ? (
            <Minimize size={14} strokeWidth={2.5} />
          ) : (
            <Maximize size={14} strokeWidth={2.5} />
          )}
        </button>
        <button
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