import { Button } from "./ui/button";
import { IoIosClose } from "react-icons/io";

export interface EditorTab {
    id: string;
    name: string;
    isDirty?: boolean;
}

interface TabbarProps {
    tabs: EditorTab[];
    activeTabId: string | null;
    onTabSelect: (id: string) => void;
    onTabClose: (id: string) => void;
}

function Tabbar({
    tabs,
    activeTabId,
    onTabSelect,
    onTabClose,
}: TabbarProps) {
    return (
        <div className="flex h-9 w-full min-w-0 shrink-0 items-stretch bg-background">
            <div
                role="tablist"
                aria-label="Open files"
                className="flex min-w-0 flex-1 items-stretch overflow-x-auto"
            >
                {tabs.map((tab) => {
                    const isActive = activeTabId === tab.id;

                    return (
                        <div
                            key={tab.id}
                            className={`group relative flex h-full max-w-56 min-w-32 shrink-0 items-center border-r px-2 transition-colors ${isActive ? "bg-muted/40 text-foreground" : "text-muted-foreground/70 hover:bg-muted/20 hover:text-foreground"}`}
                        >
                            <button
                                type="button"
                                role="tab"
                                aria-selected={isActive}
                                title={tab.name}
                                onClick={() => onTabSelect(tab.id)}
                                className="flex h-full min-w-0 flex-1 items-center gap-2 text-left text-xs outline-none"
                            >
                                <span className="truncate">{tab.name}</span>
                            </button>

                            {tab.isDirty && (
                                <span
                                    className="mr-1 size-2 shrink-0 rounded-full bg-foreground group-hover:hidden"
                                    title="Unsaved changes"
                                />
                            )}

                            <Button
                                type="button"
                                variant="ghost"
                                size="icon"
                                aria-label={`Close ${tab.name}`}
                                title="Close"
                                onClick={(event) => {
                                    event.stopPropagation();
                                    onTabClose(tab.id);
                                }}
                                className="size-6 shrink-0 rounded-sm p-0 opacity-0 transition-opacity group-hover:opacity-100 focus-visible:opacity-100"
                            >
                                <IoIosClose className="size-5" />
                            </Button>

                            {isActive && (
                                <span className="absolute bottom-0 left-0 h-[2px] w-full" />
                            )}
                        </div>
                    );
                })}
            </div>
        </div>
    );
}

export default Tabbar;