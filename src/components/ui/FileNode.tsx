import { useState } from "react";
import { invoke } from "@tauri-apps/api/core";
import { FileCode, ChevronRight, Folder, FolderOpen } from "lucide-react";

export interface FileItem {
    name: string;
    path: string;
    is_dir: boolean;
}

export function FileNode({ file, onFileClick, level = 0 }: { file: FileItem; onFileClick: (path: string) => void; level?: number }) {
    const [isOpen, setIsOpen] = useState(false);
    const [children, setChildren] = useState<FileItem[] | null>(null);

    const handleClick = async () => {
        if (file.is_dir) {
            if (!isOpen && children === null) {
                try {
                    const fetched = await invoke<FileItem[]>("get_directory_files", { path: file.path });
                    setChildren(fetched);
                } catch (error) {
                    console.error("Failed to fetch folder contents:", error);
                }
            }
            setIsOpen(!isOpen);
        } else {
            onFileClick(file.path);
        }
    };

    return (
        <div className="flex flex-col w-full">
            <div 
                onClick={handleClick}
                style={{ paddingLeft: `${(level * 12) + 6}px` }} 
                className="flex items-center gap-2 text-neutral-400 hover:text-neutral-100 cursor-pointer py-1.5 pr-1.5 rounded-md hover:bg-white/10 text-sm transition-all group"
            >
                {file.is_dir ? (
                    <ChevronRight 
                        size={14} 
                        className={`text-neutral-500 transition-transform duration-200 shrink-0 ${isOpen ? "rotate-90" : ""}`} 
                    />
                ) : null}

                {file.is_dir ? (
                    isOpen ? (
                        <FolderOpen size={16} className="text-amber-400/90 shrink-0" />
                    ) : (
                        <Folder size={16} className="text-amber-400/90 shrink-0" />
                    )
                ) : (
                    <FileCode size={16} className="text-blue-400/80 group-hover:text-blue-400 transition-colors shrink-0" />
                )}
                
                <span className="truncate select-none">{file.name}</span>
            </div>
            
            {isOpen && children && children.length > 0 && (
                <div className="flex flex-col w-full">
                    {children.map(child => (
                        <FileNode 
                            key={child.path} 
                            file={child} 
                            onFileClick={onFileClick} 
                            level={level + 1} 
                        />
                    ))}
                </div>
            )}
        </div>
    );
}