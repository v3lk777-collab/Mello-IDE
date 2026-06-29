import { useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { open } from "@tauri-apps/plugin-dialog";
import { FileNode, FileItem } from "./ui/FileNode";
import { Folder, Settings, Search, FolderOpen, LucideInfo} from "lucide-react";


interface SidebarProps {
    onFileClick: (path: string) => void;
    onFolderOpen: (path: string) => void;
    fontSize: number;
    fontFamily: string;
    lineHeight: number;
    onFontSizeChange?: (size: number) => void;
    onFontFamilyChange?: (family: string) => void;
    onLineHeightChange?: (height: number) => void;
}

function Sidebar({ onFolderOpen, onFileClick, fontSize, lineHeight, fontFamily, onFontSizeChange, onFontFamilyChange, onLineHeightChange } : SidebarProps) {
    const [activeItem, setActiveItem] = useState<string | null>("files");
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
        } catch (error) {
            console.error("Failed to open folder:", error);
        }
    };

    const menuItems = [
        { id: "files", icon: Folder },
        { id: "search", icon: Search }
    ];

    const menuItemsFooter = [
        { id: "info", icon: LucideInfo },
        { id: "settings", icon: Settings }
    ];

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
                <div
                    key={activeItem}
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
                </div>
            );
        }

        if (displayedFiles.length === 0) {
            return <p className="text-xs text-neutral-500 text-center py-4">No files found.</p>;
        }

        return (
            <div className="space-y-0.5">
                {files.map((file) => (
                    <FileNode key={file.path} file={file} onFileClick={onFileClick} />
                ))}
            </div>
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

            {activeItem && (
                <div
                    className="w-64 bg-black border-r border-white/5 p-4 animate-in slide-in-from-left duration-300 flex flex-col"
                    style={{
                        width: activeItem ? "256px" : "0px",
                        opacity: activeItem ? 1 : 0,
                        transition: "width 280ms cubic-bezier(0.4, 0, 0.2, 1), opacity 220ms ease",
                        minWidth: 0,
                    }}
                >
                    <h2 className="text-white font-bold mb-4 pb-1 capitalize border-b border-white/5 shrink-0">
                        {activeItem === "files" ? "Explorer" : activeItem}
                    </h2>
                    
                    {activeItem === "files" && (
                        <div className="flex-1 overflow-y-auto">
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
                                    className="w-full bg-black/20 py-2 pr-3 pl-9 text-neutral-200 rounded-md text-sm outline-none border border-white/10 focus:border-blue-500/50 focus:bg-black/40 transition-all placeholder:text-neutral-600" 
                                    placeholder="Search in files..." 
                                />
                            </div>
                            <div className="flex-1 overflow-y-auto">
                                {renderFilesList()}
                            </div>
                        </div>
                    )}

                    {activeItem === "info" && (
                        <div className="flex flex-col gap-4">
                            <h3 className="text-white font-semibold">About Mello</h3>
                            <p className="text-neutral-400 text-sm">
                                Mello is a custom programming language designed to simplify embedded systems development.
                            </p>
                            <div className="border-t border-white/5 pt-4">
                                <p className="text-neutral-500 text-xs uppercase font-bold">Created by</p>
                                <p className="text-white text-sm">Mohammed Tamer Mohammed El-Azab</p>
                            </div>
                            <div className="border-t border-white/5 pt-4">
                                <p className="text-neutral-500 text-xs uppercase font-bold">Version</p>
                                <p className="text-white text-sm">1.0.0-alpha</p>
                            </div>
                        </div>
                    )}
                    
                    {activeItem === "settings" && (
                        <div className="p-3 text-sm">
                            <div className="space-y-5">
                            
                            <div>
                                <div className="flex justify-between items-center mb-1.5 px-1">
                                    <span className="text-neutral-300">Font Size</span>
                                    <span className="font-mono text-[#a855f7]">{fontSize}px</span>
                                </div>
                                <input
                                    type="range"
                                    min="12"
                                    max="26"
                                    step="1"
                                    value={fontSize}
                                    onChange={(e) => onFontSizeChange?.(Number(e.target.value))}
                                    className="w-full accent-[#a855f7]"
                                />
                            </div>

                            <div>
                                <span className="text-neutral-300 block mb-1.5 px-1">Font Family</span>
                                <div className="space-y-1">
                                    {[
                                        { label: "JetBrains Mono", value: "'JetBrains Mono', monospace" },
                                        { label: "Fira Code", value: "'Fira Code', monospace" },
                                        { label: "Cascadia Code", value: "'Cascadia Code', monospace" },
                                    ].map((font) => (
                                        <button
                                            key={font.label}
                                            onClick={() => onFontFamilyChange?.(font.value)}
                                            className={`w-full text-left px-3 py-2 rounded-lg border text-sm transition-colors
                                                ${fontFamily === font.value 
                                                ? "border-[#a855f7] bg-[#a855f7]/10 text-white" 
                                                : "border-neutral-700 hover:bg-neutral-800 text-neutral-300"
                                                }`}
                                            >
                                                {font.label}
                                        </button>
                                    ))}
                                </div>
                            </div>

                            <div>
                                <div className="flex justify-between items-center mb-1.5 px-1">
                                    <span className="text-neutral-300">Line Height</span>
                                    <span className="font-mono text-[#a855f7]">{lineHeight}</span>
                                </div>
                                <input
                                    type="range"
                                    min="20"
                                    max="34"
                                    step="1"
                                    value={lineHeight}
                                    onChange={(e) => onLineHeightChange?.(Number(e.target.value))}
                                    className="w-full accent-[#a855f7]"
                                />
                            </div>
                        </div>
                    </div>
                )}
            </div>)}
        </div>
    );
}

export default Sidebar;