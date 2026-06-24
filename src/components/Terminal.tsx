import { TerminalIcon, ListX, X } from "lucide-react";
import { useState, useEffect, useCallback } from "react";

interface TerminalProps {
  output: string[];
  onClose: () => void;
  onClear: () => void;
  terminalIsActive: boolean;
}

function Terminal({ output, terminalIsActive, onClose, onClear } : TerminalProps) {
    const [height, setHeight] = useState(160);
    const [isResizing, setIsResizing] = useState(false);

    const startResizing = useCallback(() => {
        setIsResizing(true);
    }, []);

    const stopResizing = useCallback(() => {
        setIsResizing(false);
    }, []);

    useEffect(() => {
        const handleMouseMove = (e: any) => {
            if (!isResizing) {
                return;
            }
            
            const newHeight = window.innerHeight - e.clientY;
            
            if (newHeight > 100 && newHeight < 500) {
                setHeight(newHeight);
            }
        };

        if (isResizing) {
            window.addEventListener("mousemove", handleMouseMove);
            window.addEventListener("mouseup", stopResizing);
        }

        return () => {
            window.removeEventListener("mousemove", handleMouseMove);
            window.removeEventListener("mouseup", stopResizing);
        };
    }, [isResizing, stopResizing]);

    return (
        <div 
            className={`${terminalIsActive ? '' : 'hidden'} flex flex-col border-t border-white/10`}
            style={{ 
                height: `${height}px`,
                background: '#080808',
            }}
        >
            <div 
                onMouseDown={startResizing}
                className="flex items-center justify-between px-3 shrink-0 select-none cursor-ns-resize"
                style={{
                    height: '36px',
                    background: '#0f0f0f',
                    borderBottom: '1px solid rgba(255,255,255,0.06)',
                }}
            >
                <div className="flex items-center h-full">
                    <div
                        className="flex items-center gap-2 px-3 h-full text-xs font-medium tracking-wide"
                        style={{
                            color: '#e0e0e0',
                            borderBottom: '1px solid #bf5fff',
                            marginBottom: '-1px',
                        }}
                    >
                        <TerminalIcon size={11} style={{ color: '#bf5fff' }} />
                        <span>Terminal</span>
                    </div>
                </div>

                <div className="flex items-center gap-1">
                    <button
                        onClick={onClear}
                        className="flex items-center gap-1.5 px-2 py-1 rounded text-xs transition-all"
                        style={{ color: '#555', }}
                        onMouseEnter={e => {
                            e.currentTarget.style.color = '#aaa';
                            e.currentTarget.style.background = 'rgba(255,255,255,0.05)';
                        }}
                        onMouseLeave={e => {
                            e.currentTarget.style.color = '#555';
                            e.currentTarget.style.background = 'transparent';
                        }}
                        title="Clear output"
                    >
                        <ListX size={11} />
                    </button>

                    <div style={{ width: '1px', height: '14px', background: 'rgba(255,255,255,0.07)' }} />

                    <button
                        onClick={onClose}
                        className="p-1.5 rounded transition-all ml-1"
                        style={{ color: '#555' }}
                        onMouseEnter={e => {
                            e.currentTarget.style.color = '#ff5f5f';
                            e.currentTarget.style.background = 'rgba(255,95,95,0.08)';
                        }}
                        onMouseLeave={e => {
                            e.currentTarget.style.color = '#555';
                            e.currentTarget.style.background = 'transparent';
                        }}
                        title="Close Terminal"
                    >
                        <X size={12} />
                    </button>
                </div>
            </div>

            <div
                className="flex-1 overflow-y-auto py-3 font-mono text-xs leading-6"
                style={{
                    scrollbarWidth: 'thin',
                    scrollbarColor: '#1e1e1e #080808',
                    padding: '12px 16px',
                }}
            >
                {output.length === 0 ? (
                    <div className="flex items-center gap-2" style={{ color: '#333' }}>
                        <span>~</span>
                        <span>no output yet</span>
                        <span className="animate-pulse">▋</span>
                    </div>
                ) : (
                    <div className="space-y-0.5">
                        {output.map((line, i) => {
                            const isError   = /error|failed|exception/i.test(line);
                            const isSuccess = /success|done|uploaded|compiled/i.test(line);
                            const isWarn    = /warning|warn/i.test(line);
                            const isMello   = line.startsWith('[Mello]');
                            const isCmd     = line.startsWith('>');

                            let color = '#606060';
                            if (isError)   color = '#ff5f5f';
                            if (isSuccess) color = '#50fa7b';
                            if (isWarn)    color = '#ffb86c';
                            if (isMello)   color = '#bf5fff';
                            if (isCmd)     color = '#8be9fd';

                            return (
                                <div
                                    key={i}
                                    className="flex items-start gap-3"
                                    style={{ color }}
                                >
                                    <span
                                        className="shrink-0 select-none text-right"
                                        style={{ color: '#2a2a2a', width: '24px', fontSize: '10px', paddingTop: '1px' }}
                                    >
                                        {i + 1}
                                    </span>

                                    <span className="shrink-0 select-none" style={{ color: '#2e2e2e' }}>
                                        {isError ? '✕' : isSuccess ? '✓' : isWarn ? '!' : '›'}
                                    </span>

                                    <span className="flex-1 break-all">{line}</span>
                                </div>
                            );
                        })}
                    </div>
                )}
            </div>
        </div>
    );
}

export default Terminal;