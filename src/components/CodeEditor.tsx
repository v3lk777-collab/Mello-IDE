import Editor from '@monaco-editor/react';
import { editor, Position } from 'monaco-editor';

interface CodeEditorProps {
  code: string;
  fontSize: number;
  lineHeight: number;
  fontFamily: string;
  onChange: (value: string) => void;
}

function CodeEditor({ code, onChange, fontSize, lineHeight, fontFamily } : CodeEditorProps) {
    return (
        <div className="flex-1 relative bg-[#000000] overflow-hidden border border-zinc-800">
            <Editor
                width="100%"
                height="100%"
                onMount={(_editor, monaco) => {
                    monaco.languages.register({ id: 'mello' });

                    monaco.languages.setMonarchTokensProvider('mello', {
                        keywords_def:     ['start', 'loop', 'func', 'use'],
                        keywords_control: ['if', 'elif', 'else', 'return', 'every', 'while', 'repeat', 'or', 'and'],
                        keywords_io:      ['turn_on', 'turn_off', 'wait', 'write', 'read', 'serial', 'print', 'println', 'scale', 'read_serial', 'available', 'on_press'],
                        tokenizer: {
                            root: [
                                [/[a-z_$][\w$]*/, {
                                    cases: {
                                        '@keywords_def':     'keyword.def',
                                        '@keywords_control': 'keyword.control',
                                        '@keywords_io':      'keyword.io',
                                        '@default':          'variable'
                                    }
                                }],
                                [/[A-Z][\w$]*/,                    'type.name'],
                                [/\d+\.\d+/,                    'number.float'],
                                [/\d+/,                           'number.int'],
                                [/"([^"\\]|\\.)*"/,            'string.quoted'],
                                [/#.*$/,                        'comment.line'],
                                [/[=><!~?:&|+\-*\/\^%]+/,           'operator'],
                                [/[{}()\[\]]/,             'delimiter.bracket'],
                                [/[,;]/,                           'delimiter'],
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
                                { label: 'func', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'func ${1:name}():\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'start', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'setup:\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'loop', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'loop:\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'if', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'if ${1:condition}:\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'elif', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'elif ${1:condition}:\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'else', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'else:\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'while', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'while ${1:condition}:\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'repeat', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'repeat ${1:times}:\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'every', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'every ${1:ms}:\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'return', kind: monaco.languages.CompletionItemKind.Keyword, insertText: 'return ${0:value}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'turn_on', kind: monaco.languages.CompletionItemKind.Function, insertText: 'turn_on(${1:pin})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'turn_off', kind: monaco.languages.CompletionItemKind.Function, insertText: 'turn_off(${1:pin})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'wait', kind: monaco.languages.CompletionItemKind.Function, insertText: 'wait(${1:ms})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'print', kind: monaco.languages.CompletionItemKind.Function, insertText: 'print(${1:value})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'println', kind: monaco.languages.CompletionItemKind.Function, insertText: 'println(${1:value})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'write', kind: monaco.languages.CompletionItemKind.Function, insertText: 'write(${1:pin}, ${2:value})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'read', kind: monaco.languages.CompletionItemKind.Function, insertText: 'read(${1:pin})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'serial', kind: monaco.languages.CompletionItemKind.Function, insertText: 'serial(${1:9600})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'scale', kind: monaco.languages.CompletionItemKind.Function, insertText: 'scale(${1:value}, ${2:fromLow}, ${3:fromHigh}, ${4:toLow}, ${5:toHigh})', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'read_serial', kind: monaco.languages.CompletionItemKind.Function, insertText: 'read_serial()', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'available', kind: monaco.languages.CompletionItemKind.Function, insertText: 'available()', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'on_press', kind: monaco.languages.CompletionItemKind.Function, insertText: 'on_press(${1:pin}):\n\t${0}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                                { label: 'use', kind: monaco.languages.CompletionItemKind.Module, insertText: 'use ${1:library}', insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet, range },
                            ];

                            return { suggestions };
                        },
                        triggerCharacters: ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','_'],
                    });

                    monaco.editor.defineTheme('melloKids', {
                        base: 'vs-dark',
                        inherit: true,
                        rules: [
                            { token: 'keyword.def',       foreground: 'a855f7', fontStyle: 'bold' },
                            { token: 'keyword.control',   foreground: 'c026ff', fontStyle: 'bold' },
                            { token: 'keyword.io',        foreground: '14b8a6', fontStyle: 'bold' },
                            { token: 'variable',          foreground: '60a5fa' },
                            { token: 'type.name',         foreground: 'c084fc', fontStyle: 'italic' },
                            { token: 'number.int',        foreground: 'fbbf24' },
                            { token: 'number.float',      foreground: 'f59e0b' },
                            { token: 'string.quoted',     foreground: '34d399' },
                            { token: 'comment.line',      foreground: '64748b', fontStyle: 'italic' },
                            { token: 'operator',          foreground: '14b8a6' },
                            { token: 'delimiter.bracket', foreground: 'fbbf24', fontStyle: 'bold' },
                            { token: 'delimiter',         foreground: '475569' },
                        ],
                        colors: {
                            'editor.background':                    '#000000',
                            'editor.foreground':                    '#e0e7ff',
                            'editor.lineHighlightBackground':       '#1e1135',
                            'editor.lineHighlightBorder':           '#4c1d95',
                            'editor.selectionBackground':           '#4c1d9540',
                            'editor.inactiveSelectionBackground':   '#312e8140',
                            'editorCursor.foreground':              '#a855f7',
                            'editorCursor.background':              '#000000',
                            'editorLineNumber.foreground':          '#475569',
                            'editorLineNumber.activeForeground':    '#a855f7',
                            'editorIndentGuide.background1':        '#1e1135',
                            'editorIndentGuide.activeBackground1':  '#4c1d9540',
                            'editorBracketMatch.background':        '#fbbf2415',
                            'editorBracketMatch.border':            '#fbbf2460',
                            'scrollbarSlider.background':           '#4c1d9525',
                            'scrollbarSlider.hoverBackground':      '#4c1d9540',
                            'scrollbarSlider.activeBackground':     '#a855f750',
                            'editorGutter.background':              '#000000',
                            'editor.findMatchBackground':           '#a855f740',
                            'editor.findMatchHighlightBackground':  '#a855f720',
                        }
                    });

                    monaco.editor.setTheme('melloKids');
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