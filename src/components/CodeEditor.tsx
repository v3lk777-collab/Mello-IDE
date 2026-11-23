import { useCallback, useMemo } from "react";
import { motion } from "framer-motion";
import { editorThemes } from "../utils/themes";
import type { editor as MonacoEditor } from "monaco-editor";
import Editor, { loader, type BeforeMount } from "@monaco-editor/react";

loader.config({ paths: { vs: "/monaco-editor/min/vs" } });

interface CodeEditorProps {
    code: string;
    theme: string;
    fontSize: number;
    lineHeight: number;
    fontFamily: string;
    useMinimap: boolean;
    onChange: (value: string) => void;
}

interface CompletionDefinition {
    label: string;
    insertText: string;
    kind: "snippet" | "keyword" | "function" | "method";
    detail?: string;
    isSnippet?: boolean;
}

const configuredMonacoInstances = new WeakSet<object>();

const globalCompletions: CompletionDefinition[] = [
    { label: "use", insertText: "use ${1:module_name}", kind: "snippet", isSnippet: true, detail: "Import a module" },
    { label: "start", insertText: "fn start():\n\t${0}", kind: "snippet", isSnippet: true, detail: "Program initialization" },
    { label: "loop", insertText: "fn loop():\n\t${0}", kind: "snippet", isSnippet: true, detail: "Main program loop" },
    { label: "fn", insertText: "fn ${1:name}():\n\t${0}", kind: "snippet", isSnippet: true, detail: "Define a function" },
    { label: "class", insertText: "class ${1:name}:\n\t${0}", kind: "snippet", isSnippet: true, detail: "Define a class" },
    { label: "module", insertText: "module ${1:module_name}:\n\t${0}", kind: "snippet", isSnippet: true, detail: "Define a module" },
    { label: "if", insertText: "if ${1:condition}:\n\t${0}", kind: "snippet", isSnippet: true, detail: "Conditional statement" },
    { label: "elif", insertText: "elif ${1:condition}:\n\t${0}", kind: "snippet", isSnippet: true, detail: "Additional condition" },
    { label: "else", insertText: "else:\n\t${0}", kind: "snippet", isSnippet: true, detail: "Alternative condition" },
    { label: "while", insertText: "while ${1:condition}:\n\t${0}", kind: "snippet", isSnippet: true, detail: "While loop" },
    { label: "for", insertText: "for ${1:item} in ${2:range(0, 10)}:\n\t${0}", kind: "snippet", isSnippet: true, detail: "For loop" },
    { label: "repeat", insertText: "repeat ${1:10}:\n\t${0}", kind: "snippet", isSnippet: true, detail: "Repeat loop" },
    { label: "every", insertText: "every ${1:1s}:\n\t${0}", kind: "snippet", isSnippet: true, detail: "Periodic execution" },
    { label: "on_press", insertText: "on_press ${1:button}:\n\t${0}", kind: "snippet", isSnippet: true, detail: "Button press handler" },

    { label: "return", insertText: "return ", kind: "keyword" },
    { label: "break", insertText: "break", kind: "keyword" },
    { label: "continue", insertText: "continue", kind: "keyword" },
    { label: "and", insertText: "and", kind: "keyword" },
    { label: "or", insertText: "or", kind: "keyword" },
    { label: "not", insertText: "not ", kind: "keyword" },
    { label: "in", insertText: "in", kind: "keyword" },
    { label: "HIGH", insertText: "HIGH", kind: "keyword" },
    { label: "LOW", insertText: "LOW", kind: "keyword" },
    { label: "pass", insertText: "pass", kind: "keyword" },

    { label: "millis", insertText: "millis()", kind: "function", detail: "Get elapsed milliseconds" },
    { label: "range", insertText: "range(${1:start}, ${2:end})", kind: "function", isSnippet: true },
    { label: "turn_on", insertText: "turn_on(${1:pin})", kind: "function", isSnippet: true },
    { label: "turn_off", insertText: "turn_off(${1:pin})", kind: "function", isSnippet: true },
    { label: "toggle", insertText: "toggle(${1:pin})", kind: "function", isSnippet: true },
    { label: "wait", insertText: "wait(${1:1s})", kind: "function", isSnippet: true },
    { label: "sleep", insertText: "sleep(${1:duration})", kind: "function", isSnippet: true },
    { label: "write", insertText: "write(${1:pin}, ${2:value})", kind: "function", isSnippet: true },
    { label: "read", insertText: "read(${1:pin})", kind: "function", isSnippet: true },
    { label: "save_memory", insertText: "save_memory(${1:address}, ${2:value})", kind: "function", isSnippet: true },
    { label: "read_memory", insertText: "read_memory(${1:address})", kind: "function", isSnippet: true },
    { label: "scale", insertText: "scale(${1:value}, ${2:fromMin}, ${3:fromMax}, ${4:toMin}, ${5:toMax})", kind: "function", isSnippet: true },
    { label: "delay_ms", insertText: "delay_ms(${1:duration})", kind: "function", isSnippet: true },
    { label: "pin_mode", insertText: "pin_mode(${1:pin}, ${2:mode})", kind: "function", isSnippet: true },
];

const serialCompletions: CompletionDefinition[] = [
    { label: "start", insertText: "start(${1:9600})", kind: "method", isSnippet: true, detail: "serial.start(baud_rate)" },
    { label: "print", insertText: "print(${1:value})", kind: "method", isSnippet: true, detail: "serial.print(value)" },
    { label: "println", insertText: "println(${1:value})", kind: "method", isSnippet: true, detail: "serial.println(value)" },
    { label: "read", insertText: "read()", kind: "method", detail: "serial.read()" },
    { label: "available", insertText: "available()", kind: "method", detail: "serial.available()" },
    { label: "availableForWrite", insertText: "availableForWrite()", kind: "method", detail: "serial.availableForWrite()" },
    { label: "end", insertText: "end()", kind: "method", detail: "serial.end()" },
    { label: "find", insertText: "find(${1:text})", kind: "method", isSnippet: true, detail: "serial.find(text)" },
    { label: "findUntil", insertText: "findUntil(${1:text}, ${2:until})", kind: "method", isSnippet: true, detail: "serial.findUntil(text, until)" },
    { label: "waitUntilSend", insertText: "waitUntilSend()", kind: "method" },
    { label: "parseFloat", insertText: "parseFloat()", kind: "method" },
    { label: "parseInt", insertText: "parseInt()", kind: "method" },
    { label: "peek", insertText: "peek()", kind: "method" },
    { label: "readStringUntil", insertText: "readStringUntil(${1:character})", kind: "method", isSnippet: true },
];

const configureMello: BeforeMount = (monaco) => {
    if (configuredMonacoInstances.has(monaco)) return;

    configuredMonacoInstances.add(monaco);

    if (!monaco.languages.getLanguages().some((language: any) => language.id === "mello")) {
        monaco.languages.register({ id: "mello" });
    }

    monaco.languages.setMonarchTokensProvider("mello", {
        keywords_def: [
            "start",
            "loop",
            "fn",
            "use",
            "module",
            "class",
        ],

        keywords_control: [
            "if",
            "elif",
            "else",
            "return",
            "every",
            "while",
            "for",
            "repeat",
            "or",
            "and",
            "not",
            "in",
            "range",
            "break",
            "continue",
            "on_press",
        ],

        keywords_io: [
            "serial.start",
            "serial.print",
            "serial.println",
            "serial.read",
            "serial.available",
            "serial.availableForWrite",
            "serial.end",
            "serial.find",
            "serial.findUntil",
            "serial.waitUntilSend",
            "serial.parseFloat",
            "serial.parseInt",
            "serial.peek",
            "serial.readStringUntil",
            "range",
            "millis",
            "turn_on",
            "turn_off",
            "toggle",
            "wait",
            "write",
            "read",
            "scale",
            "sleep",
            "delay_ms",
            "pin_mode",
            "save_memory",
            "read_memory",
        ],

        typeKeywords: [
            "void",
            "str",
            "int",
            "bool",
            "float",
            "char",
        ],

        constants: [
            "HIGH",
            "LOW",
        ],

        tokenizer: {
            root: [
                [/#.*$/, "comment.line"],

                [/"([^"\\]|\\.)*"/, "string.quoted"],
                [/'([^'\\]|\\.)*'/, "string.quoted"],

                [/0[xX][0-9a-fA-F]+/, "number.hex"],
                [/0[bB][01]+/, "number.binary"],
                [/0[oO][0-7]+/, "number.octal"],
                [/\d+\.\d+([eE][+-]?\d+)?/, "number.float"],
                [/\d+[eE][+-]?\d+/, "number.float"],
                [/\d+/, "number.int"],

                [/[A-Z][\w$]*/, {
                    cases: {
                        "@constants": "constant",
                        "@default": "type.name",
                    },
                }],

                [/[a-zA-Z_$][\w$]*(?:\.[a-zA-Z_$][\w$]*)+(?=\s*\()/, "function.method"],

                [/[a-zA-Z_$][\w$]*(?:\.[a-zA-Z_$][\w$]*)*/, {
                    cases: {
                        "@keywords_def": "keyword.def",
                        "@keywords_control": "keyword.control",
                        "@keywords_io": "keyword.io",
                        "@typeKeywords": "type.keyword",
                        "@constants": "constant",
                        "@default": "variable",
                    },
                }],

                [/[=><!~?:&|+\-*\/^%]+/, "operator"],
                [/[\[\]{}()]/, "delimiter.bracket"],
                [/[,;:]/, "delimiter"],
                [/\./, "delimiter"],
            ],
        },
    });

    monaco.languages.setLanguageConfiguration("mello", {
        comments: {
            lineComment: "#",
        },

        onEnterRules: [
            {
                beforeText: /^\s*(?:fn|if|elif|else|while|for|repeat|every|module|class|on_press)\b.*:\s*$/,
                action: {
                    indentAction: monaco.languages.IndentAction.Indent,
                },
            },
        ],

        indentationRules: {
            increaseIndentPattern: /:\s*$/,
            decreaseIndentPattern: /^\s*(?:elif|else)\b.*$/,
        },

        wordPattern: /(-?\d*\.?\d\w*)|([^\s`~!@#$%^&*()\-+=\[\]{}\\|;:'",.<>\/?]+)/,

        brackets: [
            ["{", "}"],
            ["[", "]"],
            ["(", ")"],
        ],

        autoClosingPairs: [
            { open: "{", close: "}" },
            { open: "[", close: "]" },
            { open: "(", close: ")" },
            { open: '"', close: '"', notIn: ["string", "comment"] },
            { open: "'", close: "'", notIn: ["string", "comment"] },
        ],

        surroundingPairs: [
            { open: "{", close: "}" },
            { open: "[", close: "]" },
            { open: "(", close: ")" },
            { open: '"', close: '"' },
            { open: "'", close: "'" },
        ],
    });

    monaco.languages.registerCompletionItemProvider("mello", {
        provideCompletionItems: (model: MonacoEditor.ITextModel, position: any) => {
            const word = model.getWordUntilPosition(position);
            const lineContent = model.getLineContent(position.lineNumber);

            const range = {
                startLineNumber: position.lineNumber,
                endLineNumber: position.lineNumber,
                startColumn: word.startColumn,
                endColumn: word.endColumn,
            };

            const textBeforeWord = lineContent.slice(0, word.startColumn - 1);
            const memberMatch = textBeforeWord.match(/\b([a-zA-Z_]\w*)\.$/);

            const suggestions = memberMatch
                ? memberMatch[1] === "serial"
                    ? serialCompletions
                    : []
                : globalCompletions;

            const completionKinds = {
                snippet: monaco.languages.CompletionItemKind.Snippet,
                keyword: monaco.languages.CompletionItemKind.Keyword,
                function: monaco.languages.CompletionItemKind.Function,
                method: monaco.languages.CompletionItemKind.Method,
            };

            return {
                suggestions: suggestions.map((item) => ({
                    label: item.label,
                    kind: completionKinds[item.kind],
                    insertText: item.insertText,
                    insertTextRules: item.isSnippet
                        ? monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet
                        : undefined,
                    detail: item.detail,
                    range,
                })),
            };
        },

        triggerCharacters: ["."],
    });

    Object.entries(editorThemes).forEach(([themeName, themeData]) => {
        monaco.editor.defineTheme(themeName, themeData);
    });
};

function CodeEditor({
    code,
    onChange,
    theme,
    fontSize,
    lineHeight,
    fontFamily,
    useMinimap,
}: CodeEditorProps) {
    const handleChange = useCallback(
        (value: string | undefined) => {
            onChange(value ?? "");
        },
        [onChange]
    );

    const editorOptions = useMemo<MonacoEditor.IStandaloneEditorConstructionOptions>(
        () => ({
            automaticLayout: true,

            minimap: {
                enabled: useMinimap,
            },

            fontSize,
            lineHeight,
            fontFamily,
            fontLigatures: true,
            letterSpacing: 0.2,

            padding: {
                top: 12,
                bottom: 20,
            },

            smoothScrolling: true,
            cursorBlinking: "phase",
            cursorSmoothCaretAnimation: "on",
            cursorStyle: "line",
            cursorWidth: 2,

            colorDecorators: true,
            renderLineHighlight: "line",
            roundedSelection: false,
            scrollBeyondLastLine: false,

            bracketPairColorization: {
                enabled: true,
                independentColorPoolPerBracketType: true,
            },

            guides: {
                indentation: true,
                bracketPairs: "active",
                highlightActiveIndentation: true,
            },

            suggest: {
                showKeywords: true,
                preview: true,
                snippetsPreventQuickSuggestions: false,
            },

            quickSuggestions: {
                other: true,
                comments: false,
                strings: false,
            },

            quickSuggestionsDelay: 10,
            suggestOnTriggerCharacters: true,

            parameterHints: {
                enabled: true,
                cycle: true,
            },

            wordBasedSuggestions: "off",
            snippetSuggestions: "top",
            tabCompletion: "on",
            acceptSuggestionOnEnter: "smart",
            acceptSuggestionOnCommitCharacter: true,

            occurrencesHighlight: "singleFile",
            selectionHighlight: true,
            renderWhitespace: "none",
            overviewRulerLanes: 0,

            scrollbar: {
                verticalScrollbarSize: 8,
                horizontalScrollbarSize: 8,
                useShadows: false,
                verticalHasArrows: false,
                horizontalHasArrows: false,
            },

            autoIndent: "full",
            detectIndentation: false,
            insertSpaces: false,
            tabSize: 4,

            lineNumbers: "on",
            lineNumbersMinChars: 3,
            folding: true,
            showFoldingControls: "mouseover",
            matchBrackets: "always",

            renderValidationDecorations: "on",
            fixedOverflowWidgets: true,
            formatOnPaste: false,
            formatOnType: false,

            ariaLabel: "Mello Programming Language Editor",
        }),
        [useMinimap, fontSize, lineHeight, fontFamily]
    );

    return (
        <div className="relative flex-1 h-full w-full overflow-hidden bg-transparent">
            <Editor
                width="100%"
                height="100%"
                language="mello"
                theme={theme}
                value={code}
                onChange={handleChange}
                beforeMount={configureMello}
                loading={
                    <motion.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        exit={{ opacity: 0 }}
                        transition={{ duration: 0.3 }}
                        className="flex flex-col w-full h-full items-center justify-center gap-1.5 p-4"
                    >
                        <span className="text-sm text-muted-foreground"> Loading Mello Editor...</span>
                        <span className="text-xs text-muted-foreground/60">Preparing language services</span>
                    </motion.div>
                }
                options={editorOptions}
            />
        </div>
    );
}

export default CodeEditor;