import Editor from '@monaco-editor/react';
import { editorThemes } from '../utils/themes';
import { editor, Position } from 'monaco-editor';

interface CodeEditorProps {
    code: string;
    theme: string;
    fontSize: number;
    lineHeight: number;
    fontFamily: string;
    onChange: (value: string) => void;
}

function CodeEditor({ code, onChange, theme, fontSize, lineHeight, fontFamily } : CodeEditorProps) {
    return (
        <div className="flex-1 h-full relative bg-transparent overflow-hidden">
            <Editor
                width="100%"
                height="100%"
                theme={theme}
                onMount={(_editor, monaco) => {
                    monaco.languages.register({ id: 'mello' });

                    monaco.languages.setMonarchTokensProvider('mello', {
                        keywords_def:     ['start', 'loop', 'func'],
                        keywords_control: [
                            'if', 'elif', 'else', 'return', 'every', 'while', 'for', 'repeat',
                            'or', 'and', 'not', 'in', 'range', 'break', 'continue'
                        ],
                        keywords_io:      [
                            'turn_on', 'turn_off', 'toggle', 'wait', 'write', 'read', 'serial.start', 'serial.print', 'serial.println',
                            'scale', 'serial.read', 'serial.available', 'on_press', 'serial.availableForWrite', 'serial.end',
                            'serial.find', 'serial.findUntil', 'serial.waitUntilSend', 'serial.parseFloat', 'serial.parseInt',
                            'serial.peek', 'len', 'sleep'
                        ],

                        tokenizer: {
                            root: [
                                [/[a-z_$][\w$]*(\.[\w$]+)?/, {
                                    cases: {
                                        '@keywords_def':     'keyword.def',
                                        '@keywords_control': 'keyword.control',
                                        '@keywords_io':      'keyword.io',
                                        '@default':          'variable'
                                    }
                                }],

                                [/[A-Z][\w$]*/,                 'type.name'],
                                [/\d+\.\d+/,                    'number.float'],
                                [/\d+/,                         'number.int'],
                                [/"([^"\\]|\\.)*"/,             'string.quoted'],
                                [/#.*$/,                        'comment.line'],
                                [/[=><!~?:&|+\-*\/\^%]+/,       'operator'],
                                [/[{}()\[\]]/,                  'delimiter.bracket'],
                                [/[,;]/,                        'delimiter'],
                            ],
                        },
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
                                { label: 'start', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'start:\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'loop', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'loop:\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                            ];

                            return { suggestions };
                        },
                        triggerCharacters: ['.', 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','_'],
                    });

                    Object.entries(editorThemes).forEach(([themeName, themeData]) => {
                        monaco.editor.defineTheme(themeName, themeData);
                    });
                }}
                language="mello"
                value={code}
                onChange={(value) => onChange(value ?? "")}
                options={{
                    minimap: { enabled: true },
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
                    bracketPairColorization: { enabled: true, independentColorPoolPerBracketType: true },
                    guides: { indentation: true, bracketPairs: "active", highlightActiveIndentation: true },
                    suggest: { showKeywords: true, preview: true, snippetsPreventQuickSuggestions: false },
                    quickSuggestions: { other: true, comments: false, strings: false },
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