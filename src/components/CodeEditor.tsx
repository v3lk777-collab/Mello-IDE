import { motion } from 'framer-motion';
import { editorThemes } from '../utils/themes';
import { editor, Position } from 'monaco-editor';
import Editor, { loader } from '@monaco-editor/react';

loader.config({ paths: { vs: '/monaco-editor/min/vs' } });

interface CodeEditorProps {
    code: string;
    theme: string;
    fontSize: number;
    lineHeight: number;
    fontFamily: string;
    useMinimap: boolean;
    onChange: (value: string) => void;
}

function CodeEditor({ code, onChange, theme, fontSize, lineHeight, fontFamily, useMinimap }: CodeEditorProps) {
    return (
        <div className="flex-1 h-full relative bg-transparent overflow-hidden">
            <Editor
                width="100%"
                height="100%"
                theme={theme}

                loading={
                    <motion.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        exit={{ opacity: 0 }}
                        transition={{ duration: 1, ease: [0.4, 0, 0.2, 1] }}
                        className="flex flex-col w-full h-full items-center justify-center gap-1.5 p-4"
                    >
                        <span className="text-neutral-40">Loading...</span>
                        <span className="text-xs text-neutral-600">Pls wait a minute...</span>
                    </motion.div>
                }

                beforeMount={(monaco) => {
                    if (monaco.languages.getLanguages().some((lang: any) => lang.id === 'mello')) {
                        return;
                    }

                    monaco.languages.register({ id: 'mello' });

                    monaco.languages.setMonarchTokensProvider('mello', {
                        keywords_def: ['start', 'loop', 'func'],

                        keywords_control: [
                            'if', 'elif', 'else', 'return', 'every', 'while', 'for', 'repeat',
                            'or', 'and', 'not', 'in', 'range', 'break', 'continue', 'on_press'
                        ],

                        keywords_io: [
                            'turn_on', 'turn_off', 'toggle', 'wait', 'write', 'read', 'serial.start', 'serial.print', 'serial.println',
                            'scale', 'serial.read', 'serial.available', 'serial.availableForWrite', 'serial.end', 'serial.find',
                            'serial.findUntil', 'serial.waitUntilSend', 'serial.parseFloat', 'serial.parseInt',
                            'serial.peek', 'pass', 'sleep'
                        ],

                        tokenizer: {
                            root: [
                                [/[a-z_$][\w$]*(\.[\w$]+)?/, {
                                    cases: {
                                        '@keywords_def': 'keyword.def',
                                        '@keywords_control': 'keyword.control',
                                        '@keywords_io': 'keyword.io',
                                        '@default': 'variable'
                                    }
                                }],

                                [/[A-Z][\w$]*/, 'type.name'],
                                [/\d+\.\d+/, 'number.float'],
                                [/\d+/, 'number.int'],
                                [/"([^"\\]|\\.)*"/, 'string.quoted'],
                                [/#.*$/, 'comment.line'],
                                [/[=><!~?:&|+\-*\/\^%]+/, 'operator'],
                                [/[{}()\[\]]/, 'delimiter.bracket'],
                                [/[,;]/, 'delimiter'],
                            ],
                        },
                    });

                    monaco.languages.setLanguageConfiguration('mello', {
                        wordPattern: /(-?\d*\.\d\w*)|([^\`\~\!\@\#\%\^\&\*\(\)\-\=\+\[\{\]\}\\\|\;\:\'\"\,\<\>\/\?\s]+)/,

                        brackets: [
                            ['{', '}'],
                            ['[', ']'],
                            ['(', ')'],
                        ],

                        autoClosingPairs: [
                            { open: '{', close: '}' },
                            { open: '[', close: ']' },
                            { open: '(', close: ')' },
                            { open: '"', close: '"' },
                            { open: "'", close: "'" },
                        ],
                    });

                    monaco.languages.registerCompletionItemProvider('mello', {
                        provideCompletionItems: (model: editor.ITextModel, position: Position) => {
                            const word = model.getWordUntilPosition(position);

                            const range = {
                                startLineNumber: position.lineNumber,
                                endLineNumber: position.lineNumber,
                                startColumn: word.startColumn,
                                endColumn: word.endColumn,
                            };

                            const suggestions = [
                                {
                                    label: 'start',
                                    kind: monaco.languages.CompletionItemKind.Snippet,
                                    insertText: 'start:\n\t${0}',
                                    insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
                                    range
                                },
                                {
                                    label: 'loop',
                                    kind: monaco.languages.CompletionItemKind.Snippet,
                                    insertText: 'loop:\n\t${0}',
                                    insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
                                    range
                                },
                                {
                                    label: 'func',
                                    kind: monaco.languages.CompletionItemKind.Snippet,
                                    insertText: 'func ${1:name}():\n\t${0}',
                                    insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
                                    range
                                },
                                {
                                    label: 'if',
                                    kind: monaco.languages.CompletionItemKind.Snippet,
                                    insertText: 'if ${1:condition}:\n\t${0}',
                                    insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
                                    range
                                },
                                {
                                    label: 'elif',
                                    kind: monaco.languages.CompletionItemKind.Snippet,
                                    insertText: 'elif ${1:condition}:\n\t${0}',
                                    insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
                                    range
                                },
                                {
                                    label: 'else',
                                    kind: monaco.languages.CompletionItemKind.Snippet,
                                    insertText: 'else:\n\t${0}',
                                    insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
                                    range
                                },
                                {
                                    label: 'while',
                                    kind: monaco.languages.CompletionItemKind.Snippet,
                                    insertText: 'while ${1:condition}:\n\t${0}',
                                    insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
                                    range
                                },
                                {
                                    label: 'for',
                                    kind: monaco.languages.CompletionItemKind.Snippet,
                                    insertText: 'for ${1:item} in ${2:range(0, 10)}:\n\t${0}',
                                    insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
                                    range
                                },
                                {
                                    label: 'repeat',
                                    kind: monaco.languages.CompletionItemKind.Snippet,
                                    insertText: 'repeat ${1:10}:\n\t${0}',
                                    insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
                                    range
                                },
                                {
                                    label: 'every',
                                    kind: monaco.languages.CompletionItemKind.Snippet,
                                    insertText: 'every ${1:1s}:\n\t${0}',
                                    insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
                                    range
                                },

                                { label: 'return', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'return ', range },
                                { label: 'break', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'break', range },
                                { label: 'continue', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'continue', range },
                                { label: 'and', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'and', range },
                                { label: 'or', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'or', range },
                                { label: 'not', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'not ', range },
                                { label: 'in', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'in', range },
                                { label: 'pass', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'pass', range },
                                { label: 'range', kind: monaco.languages.CompletionItemKind.Function, insertText: 'range(${1:start}, ${2:end})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },

                                { label: 'turn_on', kind: monaco.languages.CompletionItemKind.Function, insertText: 'turn_on(${1:pin})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'turn_off', kind: monaco.languages.CompletionItemKind.Function, insertText: 'turn_off(${1:pin})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'toggle', kind: monaco.languages.CompletionItemKind.Function, insertText: 'toggle(${1:pin})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'wait', kind: monaco.languages.CompletionItemKind.Function, insertText: 'wait(${1:1s})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'sleep', kind: monaco.languages.CompletionItemKind.Function, insertText: 'sleep(${1:idel})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'write', kind: monaco.languages.CompletionItemKind.Function, insertText: 'write(${1:pin}, ${2:value})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'read', kind: monaco.languages.CompletionItemKind.Function, insertText: 'read(${1:pin})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'scale', kind: monaco.languages.CompletionItemKind.Function, insertText: 'scale(${1:value}, ${2:fromMin}, ${3:fromMax}, ${4:toMin}, ${5:toMax})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'on_press', kind: monaco.languages.CompletionItemKind.Function, insertText: 'on_press(${1:button}):\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },

                                { label: 'serial.start', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.start(${1:9600})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'serial.print', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.print(${1:value})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'serial.println', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.println(${1:value})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'serial.read', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.read()', range },
                                { label: 'serial.available', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.available()', range },
                                { label: 'serial.availableForWrite', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.availableForWrite()', range },
                                { label: 'serial.end', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.end()', range },
                                { label: 'serial.find', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.find(${1:text})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'serial.findUntil', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.findUntil(${1:text}, ${2:until})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'serial.waitUntilSend', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.waitUntilSend()', range },
                                { label: 'serial.parseFloat', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.parseFloat()', range },
                                { label: 'serial.parseInt', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.parseInt()', range },
                                { label: 'serial.peek', kind: monaco.languages.CompletionItemKind.Method, insertText: 'serial.peek()', range },
                            ];

                            return { suggestions };
                        },

                        triggerCharacters: ['.', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '_'],
                    });

                    Object.entries(editorThemes).forEach(([themeName, themeData]) => {
                        monaco.editor.defineTheme(themeName, themeData);
                    });
                }}

                language="mello"
                value={code}
                onChange={(value) => onChange(value ?? "")}

                options={{
                    minimap: { enabled: useMinimap ? true : false },
                    fontSize: fontSize,
                    lineHeight: lineHeight,
                    fontFamily: fontFamily,
                    fontLigatures: true,
                    letterSpacing: 0.4,
                    padding: { bottom: 20 },
                    smoothScrolling: true,
                    cursorBlinking: "phase",
                    cursorSmoothCaretAnimation: "on",
                    cursorStyle: "line",
                    cursorWidth: 2.5,
                    colorDecorators: true,
                    renderLineHighlight: "all",
                    roundedSelection: false,
                    scrollBeyondLastLine: false,

                    bracketPairColorization: {
                        enabled: true,
                        independentColorPoolPerBracketType: true
                    },

                    guides: {
                        indentation: true,
                        bracketPairs: "active",
                        highlightActiveIndentation: true
                    },

                    suggest: {
                        showKeywords: true,
                        preview: true,
                        snippetsPreventQuickSuggestions: false
                    },

                    quickSuggestions: {
                        other: true,
                        comments: false,
                        strings: false
                    },

                    wordBasedSuggestions: "off",
                    snippetSuggestions: "top",
                    tabCompletion: "on",
                    acceptSuggestionOnEnter: "smart",
                    occurrencesHighlight: "singleFile",
                    renderWhitespace: "none",
                    overviewRulerLanes: 0,

                    scrollbar: {
                        verticalScrollbarSize: 8,
                        horizontalScrollbarSize: 8,
                    },
                }}
            />
        </div>
    );
}

export default CodeEditor;