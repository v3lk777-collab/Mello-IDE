import { useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { open } from "@tauri-apps/plugin-dialog";

import { toast } from "sonner";
import { Switch } from "./ui/switch";
import { FileNode, FileItem } from "./ui/FileNode";
import { AnimatePresence, motion } from "framer-motion";
import { Folder, Settings, Search, FolderOpen, LucideInfo } from "lucide-react";

const menuItems = [
    {
        id: "files",
        icon: Folder
    },
    {
        id: "search",
        icon: Search
    }
];

const menuItemsFooter = [
    {
        id: "info",
        icon: LucideInfo
    },
    {
        id: "settings",
        icon: Settings
    }
];

const themes = [
    {
        label: "Kids",
        value: "melloKids"
    },
    {
        label: "Girls (K-Drama)",
        value: "girls"
    },
];

const fonts = [
    {
        label: "JetBrains Mono",
        value: "'JetBrains Mono', monospace"
    },
    {
        label: "Fira Code",
        value: "'Fira Code', monospace"
    },
    {
        label: "Cascadia Code",
        value: "'Cascadia Code', monospace"
    }
]

interface SidebarProps {
    theme: string;
    fontSize: number;
    fontFamily: string;
    lineHeight: number;
    useMinimap: boolean;
    onFileClick: (path: string) => void;
    onFolderOpen: (path: string) => void;
    onChangeTheme?: (theme: string) => void;
    onFontSizeChange?: (size: number) => void;
    onFontFamilyChange?: (family: string) => void;
    onLineHeightChange?: (height: number) => void;
    onUseMinimapChange?: (value: boolean) => void;
}

function Sidebar({ onFolderOpen, onFileClick, fontSize, lineHeight, fontFamily, theme, useMinimap, onUseMinimapChange, onFontSizeChange, onFontFamilyChange, onLineHeightChange, onChangeTheme }: SidebarProps) {
    const [activeItem, setActiveItem] = useState<string | null>("");
    const [files, setFiles] = useState<FileItem[]>([]);
    const [searchQuery, setSearchQuery] = useState("");

    const handleOpenFolder = async () => {
        try {
            const selected = await open({
                directory: true,
                multiple: false,
            });

            if (selected) {
                await invoke("initialize_project", { path: selected });

                const fetchedFiles = await invoke<FileItem[]>("get_directory_files", { path: selected });
                setFiles(fetchedFiles);
                onFolderOpen(selected as string);
            }
        } catch (e) {
            toast.error(`Failed to open folder: ${e}`);
        }
    };

    const togglePanel = (id: string) => {
        setActiveItem(activeItem === id ? null : id);
        setSearchQuery("");
    };

    const displayedFiles = activeItem === "search" && searchQuery.trim() !== ""
        ? files.filter(file => file.name.toLowerCase().includes(searchQuery.toLowerCase()))
        : files;

    const renderFilesList = () => {
        if (files.length === 0) {
            return (
                <motion.div
                    key={activeItem}
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    exit={{ opacity: 0 }}
                    transition={{ duration: 1, ease: [0.4, 0, 0.2, 1] }}
                    className="flex flex-col h-full items-center justify-between gap-3 py-6 px-4 text-center animate-in slide-in-from-left-4 fade-in duration-300 ease-out overflow-hidden"
                >
                    <div className="flex flex-col items-center justify-between gap-3 text-center">
                        <Search size={28} className="text-neutral-700 mb-1" />
                        <p className="text-xs text-neutral-500">No folder opened yet.</p>
                    </div>

                    <button
                        onClick={handleOpenFolder}
                        className="flex justify-center items-center w-full gap-2 px-3 py-2 bg-violet-600/10 text-violet-400 hover:bg-violet-600/20 rounded-md transition-all border border-violet-600/30 text-sm font-medium"
                    >
                        <FolderOpen /> Open Folder
                    </button>
                </motion.div>
            );
        }

        if (displayedFiles.length === 0) {
            return <p className="text-xs text-neutral-500 text-center py-4">No files found.</p>;
        }

        return (
            <motion.div
                className="space-y-0.5"
                initial={{ opacity: 0 }}
                animate={{ opacity: 1 }}
                exit={{ opacity: 0 }}
                transition={{ duration: 1, ease: [0.4, 0, 0.2, 1] }}
            >
                {displayedFiles.map((file) => (
                    <FileNode
                        key={file.path}
                        file={file}
                        onFileClick={onFileClick}
                    />
                ))}
            </motion.div>
        );
    };

    return (
        <div className="flex h-full">
            <div className="w-16 bg-neutral-950/40 backdrop-blur-md border-r border-white/5 flex flex-col items-center py-4 gap-6 z-20">
                <div className="flex flex-col gap-4">
                    {menuItems.map((item) => (
                        <button
                            key={item.id}
                            onClick={() => togglePanel(item.id)}
                            className={`p-2 transition-colors ${activeItem === item.id ? "text-white" : "text-neutral-400 hover:text-white"}`}
                        >
                            <item.icon size={24} />
                        </button>
                    ))}
                </div>

                <div className="flex flex-col items-center gap-4 mt-auto">
                    {menuItemsFooter.map((item) => (
                        <button
                            key={item.id}
                            onClick={() => togglePanel(item.id)}
                            className={`p-2 transition-colors ${activeItem === item.id ? "text-white" : "text-neutral-400 hover:text-white"}`}
                        >
                            <item.icon size={24} />
                        </button>
                    ))}
                </div>
            </div>

            <AnimatePresence initial={false}>
                {activeItem && (
                    <motion.div
                        key={activeItem}
                        initial={{ width: 0, opacity: 0 }}
                        animate={{ width: 256, opacity: 1 }}
                        exit={{ width: 0, opacity: 0 }}
                        transition={{ duration: 0.45, ease: [0.4, 0, 0.2, 1] }}
                        className="h-full bg-black border-r border-white/5 flex flex-col overflow-x-hidden"
                    >
                        <div className="w-64 p-4 h-full flex flex-col">
                            <h2 className="text-white font-bold mb-4 pb-1 capitalize border-b border-white/5 shrink-0">
                                {activeItem === "files" ? "Explorer" : activeItem === "info" ? "About" : activeItem}
                            </h2>

                            {activeItem === "files" && (
                                <div className="flex-1 overflow-y-scroll">
                                    {renderFilesList()}
                                </div>
                            )}

                            {activeItem === "search" && (
                                <div className="flex flex-col gap-4 w-full h-full overflow-hidden">
                                    <div className="relative shrink-0">
                                        <Search size={14} className="absolute left-3 top-1/2 -translate-y-1/2 text-neutral-500" />

                                        <input
                                            value={searchQuery}
                                            onChange={(e) => setSearchQuery(e.target.value)}
                                            className="w-full bg-black/20 py-2 pr-3 pl-9 text-neutral-200 rounded-md text-sm outline-none border border-white/10 focus:border-violet-600/20 focus:bg-black/40 transition-all placeholder:text-neutral-600"
                                            placeholder="Search in files..."
                                        />
                                    </div>

                                    <div className="flex-1 overflow-y-auto">
                                        {renderFilesList()}
                                    </div>
                                </div>
                            )}

                            {activeItem === "info" && (
                                <motion.div
                                    className="flex flex-col gap-4"
                                    initial={{ opacity: 0 }}
                                    animate={{ opacity: 1 }}
                                    exit={{ opacity: 0 }}
                                    transition={{ duration: 1, ease: [0.4, 0, 0.2, 1] }}
                                >
                                    <div className="gap-1">
                                        <p className="text-neutral-500 text-xs uppercase font-bold">About Mello</p>
                                        <p className="text-white text-sm">Mello compiles directly to native C++ — no runtime interpreter, no virtual machine. Write readable, Python-like code and get the exact binary footprint of hand-written Arduino C++</p>
                                    </div>

                                    <div className="border-t border-white/5 pt-4 gap-1">
                                        <p className="text-neutral-500 text-xs uppercase font-bold">Created by</p>
                                        <p className="text-white text-sm">Mohammed Tamer Mohammed El-Azab Nour</p>
                                    </div>

                                    <div className="border-t border-white/5 pt-4 gap-1">
                                        <p className="text-neutral-500 text-xs uppercase font-bold">Version</p>
                                        <p className="text-white text-sm">v0.1.3</p>
                                    </div>
                                </motion.div>
                            )}

                            {activeItem === "settings" && (
                                <motion.div
                                    className="p-4 text-sm max-w-sm w-full mx-auto"
                                    initial={{ opacity: 0, y: 8 }}
                                    animate={{ opacity: 1, y: 0 }}
                                    exit={{ opacity: 0, y: 8 }}
                                    transition={{ duration: 0.45, ease: [0.4, 0, 0.2, 1] }}
                                >
                                    <div className="space-y-6">
                                        <div className="flex flex-col gap-2.5 w-full group/fontSize">
                                            <div className="flex justify-between items-center text-xs font-medium text-neutral-500 group-hover/fontSize:text-neutral-400 transition-colors">
                                                <span className="tracking-wide">Font Size</span>
                                                <span className="text-neutral-300 font-mono bg-white/5 border border-white/4 px-1.5 py-0.5 rounded text-[11px]">{fontSize}px</span>
                                            </div>

                                            <input
                                                type="range"
                                                min="12"
                                                max="26"
                                                step="1"
                                                value={fontSize}
                                                onChange={(e) => onFontSizeChange?.(Number(e.target.value))}

                                                style={{
                                                    background: `linear-gradient(to right, #a855f7 0%, #a855f7 ${((fontSize - 12) / (26 - 12)) * 100}%, #1f1f1f ${((fontSize - 12) / (26 - 12)) * 100}%, #1f1f1f 100%)`
                                                }}

                                                className="
                                                    w-full h-1 rounded-full cursor-pointer appearance-none outline-none transition-all duration-200
                                                    group-hover/fontSize:h-1.5

                                                    [&::-webkit-slider-thumb]:appearance-none
                                                    [&::-webkit-slider-thumb]:w-3
                                                    [&::-webkit-slider-thumb]:h-3
                                                    [&::-webkit-slider-thumb]:rounded-full
                                                    [&::-webkit-slider-thumb]:bg-white
                                                    [&::-webkit-slider-thumb]:shadow-[0_2px_6px_rgba(0,0,0,0.6)]
                                                    [&::-webkit-slider-thumb]:transition-all
                                                    [&::-webkit-slider-thumb]:duration-150
                                                    group-hover/fontSize:[&::-webkit-slider-thumb]:w-4
                                                    group-hover/fontSize:[&::-webkit-slider-thumb]:h-4
                                                    [&::-webkit-slider-thumb]:active:scale-110

                                                    [&::-moz-range-thumb]:w-3
                                                    [&::-moz-range-thumb]:h-3
                                                    [&::-moz-range-thumb]:border-0
                                                    [&::-moz-range-thumb]:rounded-full
                                                    [&::-moz-range-thumb]:bg-white
                                                    [&::-moz-range-thumb]:shadow-[0_2px_6px_rgba(0,0,0,0.6)]
                                                    [&::-moz-range-thumb]:transition-all
                                                    group-hover/fontSize:[&::-moz-range-thumb]:w-4
                                                    group-hover/fontSize:[&::-moz-range-thumb]:h-4
                                                "
                                            />
                                        </div>

                                        <div className="flex flex-col gap-2.5 w-full group/lineHeight">
                                            <div className="flex justify-between items-center text-xs font-medium text-neutral-500 group-hover/lineHeight:text-neutral-400 transition-colors">
                                                <span className="tracking-wide">Line Height</span>
                                                <span className="text-neutral-300 font-mono bg-white/5 border border-white/4 px-1.5 py-0.5 rounded text-[11px]">{lineHeight}px</span>
                                            </div>

                                            <input
                                                type="range"
                                                min="20"
                                                max="34"
                                                step="1"
                                                value={lineHeight}
                                                onChange={(e) => onLineHeightChange?.(Number(e.target.value))}
                                                style={{
                                                    background: `linear-gradient(to right, #a855f7 0%, #a855f7 ${((lineHeight - 20) / (34 - 20)) * 100}%, #1f1f1f ${((lineHeight - 20) / (34 - 20)) * 100}%, #1f1f1f 100%)`
                                                }}
                                                className="
                                                    w-full h-1 rounded-full cursor-pointer appearance-none outline-none transition-all duration-200
                                                    group-hover/lineHeight:h-1.5

                                                    [&::-webkit-slider-thumb]:appearance-none
                                                    [&::-webkit-slider-thumb]:w-3
                                                    [&::-webkit-slider-thumb]:h-3
                                                    [&::-webkit-slider-thumb]:rounded-full
                                                    [&::-webkit-slider-thumb]:bg-white
                                                    [&::-webkit-slider-thumb]:shadow-[0_2px_6px_rgba(0,0,0,0.6)]
                                                    [&::-webkit-slider-thumb]:transition-all
                                                    [&::-webkit-slider-thumb]:duration-150
                                                    group-hover/lineHeight:[&::-webkit-slider-thumb]:w-4
                                                    group-hover/lineHeight:[&::-webkit-slider-thumb]:h-4
                                                    [&::-webkit-slider-thumb]:active:scale-110
                                                    
                                                    [&::-moz-range-thumb]:w-3
                                                    [&::-moz-range-thumb]:h-3
                                                    [&::-moz-range-thumb]:border-0
                                                    [&::-moz-range-thumb]:rounded-full
                                                    [&::-moz-range-thumb]:bg-white
                                                    [&::-moz-range-thumb]:shadow-[0_2px_6px_rgba(0,0,0,0.6)]
                                                    [&::-moz-range-thumb]:transition-all
                                                    group-hover/lineHeight:[&::-moz-range-thumb]:w-4
                                                    group-hover/lineHeight:[&::-moz-range-thumb]:h-4
                                                "
                                            />
                                        </div>

                                        <div className="flex flex-col gap-2 w-full">
                                            <span className="text-xs font-medium text-neutral-500 tracking-wide px-0.5">Font Family</span>
                                            <div className="flex flex-col bg-neutral-950 p-0.5 rounded-lg border border-white/4 relative w-full overflow-hidden">
                                                {fonts.map((font) => {
                                                    const isSelected = fontFamily === font.value;
                                                    return (
                                                        <button
                                                            key={font.label}
                                                            onClick={() => onFontFamilyChange?.(font.value)}
                                                            className={`flex-1 px-2 py-1.5 rounded-md text-[11px] font-medium transition-colors duration-300 text-left truncate relative select-none z-10
                                                                ${isSelected ? "text-white" : "text-neutral-500 hover:text-neutral-300"}`}
                                                        >
                                                            {isSelected && (
                                                                <motion.div
                                                                    layoutId="activeFontBg"
                                                                    className="absolute inset-0 bg-[#a855f7] rounded-md shadow-[0_2px_6px_rgba(168,85,247,0.2)]"
                                                                    transition={{ type: "spring", stiffness: 380, damping: 30 }}
                                                                />
                                                            )}
                                                            <span className="relative z-20">{font.label}</span>
                                                        </button>
                                                    );
                                                })}
                                            </div>
                                        </div>

                                        <div className="flex flex-col gap-2 w-full">
                                            <span className="text-xs font-medium text-neutral-500 tracking-wide px-0.5">Theme Layout</span>
                                            <div className="flex bg-neutral-950 p-0.5 rounded-lg border border-white/4 relative w-full overflow-hidden">
                                                {themes.map((t) => {
                                                    const isSelected = theme === t.value;
                                                    return (
                                                        <button
                                                            key={t.label}
                                                            onClick={() => onChangeTheme?.(t.value)}
                                                            className={`flex-1 px-2 py-1.5 rounded-md text-[11px] font-medium transition-colors duration-300 text-center truncate relative select-none z-10
                                                                ${isSelected ? "text-white" : "text-neutral-500 hover:text-neutral-300"}`}
                                                        >
                                                            {isSelected && (
                                                                <motion.div
                                                                    layoutId="activeThemeBg"
                                                                    className="absolute inset-0 bg-[#a855f7] rounded-md shadow-[0_2px_6px_rgba(168,85,247,0.2)]"
                                                                    transition={{ type: "spring", stiffness: 380, damping: 30 }}
                                                                />
                                                            )}
                                                            <span className="relative z-20">{t.label}</span>
                                                        </button>
                                                    );
                                                })}
                                            </div>
                                        </div>
                                        <div className="flex justify-between items-center py-1.5">
                                            <div className="flex flex-col gap-0.5">
                                                <span className="text-xs font-medium text-neutral-200">Use Minimap</span>
                                                <span className="text-[11px] text-neutral-400 font-normal">Turning it off improves editor performance</span>
                                            </div>

                                            <Switch
                                                checked={useMinimap}
                                                onCheckedChange={(value) => onUseMinimapChange?.(value)}
                                            />
                                        </div>
                                    </div>
                                </motion.div>
                            )}
                        </div>
                    </motion.div>
                )}
            </AnimatePresence>
        </div>
    );
}

export default Sidebar;