import { useState } from "react";
import { motion } from "framer-motion";
import { invoke } from "@tauri-apps/api/core";
import { FileCode, ChevronRight, Folder, FolderOpen } from "lucide-react";

interface FileItem {
    name: string;
    path: string;
    is_dir: boolean;
}

function FileNode({ file, onFileClick, level = 0 }: { file: FileItem; onFileClick: (path: string) => void; level?: number }) {
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
        <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            transition={{ duration: 0.2, ease: [0.4, 0, 0.2, 1] }}
            className="flex flex-col w-full"
        >
            <div 
                onClick={handleClick}
                style={{ paddingLeft: `${(level * 12) + 6}px` }} 
                className="flex items-center gap-2 text-neutral-400 hover:text-neutral-100 cursor-pointer py-1.5 pr-1.5 rounded-md hover:bg-white/10 text-sm transition-all group"
            >
                {file.is_dir ? (
                    <ChevronRight 
                        size={14} 
                        className={`text-neutral-500 transition-transform duration-300 shrink-0 ${isOpen ? "rotate-90 text-[#a855f7]" : ""}`} 
                    />
                ) : null}

                {file.is_dir ? (
                    isOpen ? (
                        <motion.div
                            initial={{ scale: 0.8, opacity: 0 }}
                            animate={{ scale: 1, opacity: 1 }}
                            exit={{ scale: 0.8, opacity: 0 }}
                            transition={{ duration: 0.15 }}
                        >
                            <FolderOpen size={16} className="text-[#a855f7] shrink-0" />
                        </motion.div>
                    ) : (
                        <motion.div
                            initial={{ scale: 0.8, opacity: 0 }}
                            animate={{ scale: 1, opacity: 1 }}
                            exit={{ scale: 0.8, opacity: 0 }}
                            transition={{ duration: 0.15 }}
                        >
                            <Folder size={16} className="text-purple-500/80 shrink-0" />
                        </motion.div>
                    )
                ) : (
                    <motion.div
                        initial={{ scale: 0.8, opacity: 0 }}
                        animate={{ scale: 1, opacity: 1 }}
                        transition={{ duration: 0.15 }}
                    >
                        <FileCode size={16} className="text-purple-400/70 group-hover:text-[#a855f7] transition-colors shrink-0" />
                    </motion.div>
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
        </motion.div>
    );
}

export { FileNode };
export type { FileItem };