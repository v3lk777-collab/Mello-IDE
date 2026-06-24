import { useState, useEffect, useRef, useCallback } from "react";
import { invoke } from "@tauri-apps/api/core";
import { listen } from "@tauri-apps/api/event";
import { LucideRefreshCw, Plug, PlugZap, Send, ChevronDown, ListX, X } from "lucide-react";

interface serialMonitorProps {
    onClose: () => void;
    serialMonterActive: boolean;
}

const BAUD_RATES = [300, 1200, 2400, 4800, 9600, 19200, 38400, 57600, 115200];

function SerialMonitor({ onClose, serialMonterActive } : serialMonitorProps) {
    const [ports, setPorts]         = useState<string[]>([]);
    const [selectedPort, setPort]   = useState("");
    const [baud, setBaud]           = useState(9600);
    const [connected, setConnected] = useState(false);
    const [output, setOutput]       = useState<string[]>([]);
    const [input, setInput]         = useState("");
    const [autoScroll, setAutoScroll] = useState(true);
    const bottomRef = useRef<HTMLDivElement>(null);
    const unlistenRef = useRef<(() => void) | null>(null);
    const [height, setHeight] = useState(160);
    const [isResizing, setIsResizing] = useState(false);

    const refreshPorts = async () => {
        const list = await invoke<string[]>("list_ports");
        setPorts(list);
        if (list.length > 0 && !selectedPort) setPort(list[0]);
    };

    useEffect(() => { refreshPorts(); }, []);

    useEffect(() => {
        if (autoScroll) bottomRef.current?.scrollIntoView({ behavior: "smooth" });
    }, [output]);

    const connect = async () => {
        try {
            await invoke("open_serial", { port: selectedPort, baud });

            const unlisten = await listen<string>("serial_data", (event) => {
                const lines = event.payload.split("\n").filter(l => l.trim());
                setOutput(prev => [...prev, ...lines]);
            });

            unlistenRef.current = unlisten;
            setConnected(true);
        } catch (e) {
            setOutput(prev => [...prev, `[Error] ${e}`]);
        }
    };

    const disconnect = async () => {
        await invoke("close_serial");
        unlistenRef.current?.();
        setConnected(false);
    };

    const sendMessage = async () => {
        if (!input.trim() || !connected) return;
        await invoke("send_serial", { message: input + "\n" });
        setOutput(prev => [...prev, `> ${input}`]);
        setInput("");
    };

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
            className={`${serialMonterActive ? 'hidden' : ''} flex flex-col h-full bg-[#080808] font-mono text-xs`}
            style={{ 
                height: `${height}px`,
                background: '#080808',
            }}
        >
            <div
                onMouseDown={startResizing}
                className="flex items-center gap-2 px-3 py-2 h-full bg-[#0f0f0f] border-b border-white/5 shrink-0 select-none cursor-ns-resize"
                style={{
                    height: '36px',
                    background: '#0f0f0f',
                    borderBottom: '1px solid rgba(255,255,255,0.06)',
                }}
            >
                <div className="relative">
                    <select
                        value={selectedPort}
                        onChange={e => setPort(e.target.value)}
                        disabled={connected}
                        className="appearance-none bg-[#1a1a1a] border border-white/10 text-neutral-300 rounded px-2 py-1 pr-6 text-xs focus:outline-none focus:border-purple-500/50 disabled:opacity-40"
                    >
                        {ports.length === 0
                            ? <option>No ports</option>
                            : ports.map(p => <option key={p}>{p}</option>)
                        }
                    </select>
                    <ChevronDown size={10} className="absolute right-1.5 top-1/2 -translate-y-1/2 text-neutral-500 pointer-events-none" />
                </div>

                <div className="relative">
                    <select
                        value={baud}
                        onChange={e => setBaud(Number(e.target.value))}
                        disabled={connected}
                        className="appearance-none bg-[#1a1a1a] border border-white/10 text-neutral-300 rounded px-2 py-1 pr-6 text-xs focus:outline-none focus:border-purple-500/50 disabled:opacity-40"
                    >
                        {BAUD_RATES.map(b => <option key={b} value={b}>{b}</option>)}
                    </select>
                    <ChevronDown size={10} className="absolute right-1.5 top-1/2 -translate-y-1/2 text-neutral-500 pointer-events-none" />
                </div>

                <button
                    onClick={refreshPorts}
                    disabled={connected}
                    className="p-1 rounded text-neutral-600 hover:text-neutral-300 hover:bg-white/5 transition-all disabled:opacity-30"
                    title="Refresh ports"
                >
                    <LucideRefreshCw size={12} />
                </button>

                <div className="w-px h-4 bg-white/5" />

                <button
                    onClick={connected ? disconnect : connect}
                    className={`flex items-center gap-1.5 px-2.5 py-1 rounded text-xs font-medium transition-all ${
                        connected
                        ? 'bg-red-500/10 text-red-400 hover:bg-red-500/20'
                        : 'bg-purple-500/10 text-purple-400 hover:bg-purple-500/20'
                    }`}
                >
                    {connected ? <PlugZap size={11} /> : <Plug size={11} />}
                    {connected ? 'Disconnect' : 'Connect'}
                </button>

                <div className={`w-1.5 h-1.5 rounded-full ${connected ? 'bg-green-400 shadow-[0_0_6px_#4ade80]' : 'bg-neutral-700 shadow-[0_0_6px_#404040]'}`} />

                <div className="flex-1" />

                <button
                    onClick={() => setAutoScroll(p => !p)}
                    className={`text-xs px-2 py-1 rounded hover:bg-white/5 transition-all ${autoScroll ? 'text-purple-400' : 'text-neutral-600 hover:text-neutral-400'}`}
                >
                    Auto scroll
                </button>

                <button
                    onClick={() => setOutput([])}
                    className="p-1 rounded text-neutral-600 hover:text-neutral-300 hover:bg-white/5 transition-all"
                    title="Clear Output"
                >
                    <ListX size={12} />
                </button>
                
                <div style={{ width: '1px', height: '14px', background: 'rgba(255,255,255,0.07)' }} />

                <button
                    onClick={onClose}
                    className="p-1.5 rounded transition-all"
                    style={{ color: '#555' }}
                    onMouseEnter={e => {
                        e.currentTarget.style.color = '#ff5f5f';
                        e.currentTarget.style.background = 'rgba(255,95,95,0.08)';
                    }}
                    onMouseLeave={e => {
                        e.currentTarget.style.color = '#555';
                        e.currentTarget.style.background = 'transparent';
                    }}
                    title="Close Serial Monitor"
                >
                    <X size={12} />
                </button>
            </div>

            <div
                className="flex-1 overflow-y-auto px-4 py-3 space-y-0.5"
                style={{ scrollbarWidth: 'thin', scrollbarColor: '#1e1e1e #080808' }}
            >
                {output.length === 0 ? (
                    <div className="text-neutral-700 select-none">
                        {connected ? '— waiting for data... ▋' : '— connect to start —'}
                    </div>
                ) : (
                    output.map((line, i) => {
                        const isSent  = line.startsWith('> ');
                        const isError = /error/i.test(line);
                        return (
                            <div key={i} className="flex gap-3">
                                <span className="text-neutral-800 select-none w-5 text-right shrink-0">{i + 1}</span>
                                <span className={
                                    isSent  ? 'text-blue-400' :
                                    isError ? 'text-red-400'  :
                                    'text-green-400'
                                }>
                                    {isSent ? '' : '› '}{line}
                                </span>
                            </div>
                        );
                    })
                )}
                <div ref={bottomRef} />
            </div>

            <div className="flex items-center gap-2 px-3 py-2 border-t border-white/5 bg-[#0f0f0f] shrink-0">
                <span className="text-neutral-700 select-none">›</span>
                <input
                    type="text"
                    value={input}
                    onChange={e => setInput(e.target.value)}
                    onKeyDown={e => e.key === 'Enter' && sendMessage()}
                    disabled={!connected}
                    placeholder={connected ? "Send message..." : "Not connected"}
                    className="flex-1 bg-transparent text-neutral-300 placeholder-neutral-700 focus:outline-none disabled:opacity-30"
                />
                <button
                    onClick={sendMessage}
                    disabled={!connected || !input.trim()}
                    className="p-1 rounded text-neutral-600 hover:text-purple-400 hover:bg-purple-500/10 transition-all disabled:opacity-30"
                >
                    <Send size={12} />
                </button>
            </div>
        </div>
    );
}

export default SerialMonitor;