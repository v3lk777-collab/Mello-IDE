import { editor } from 'monaco-editor';

export const editorThemes: Record<string, editor.IStandaloneThemeData> = {
    melloKids: {
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
    },

    kdrama: {
        base: 'vs-dark',
        inherit: true,

        rules: [
            { token: 'keyword.def',       foreground: 'FF6FAE', fontStyle: 'bold' },
            { token: 'keyword.control',   foreground: 'C7A6FF', fontStyle: 'bold' },
            { token: 'keyword.io',        foreground: '7AE7FF', fontStyle: 'bold' },
            { token: 'variable',          foreground: 'F6F3FF' },
            { token: 'identifier',        foreground: 'F6F3FF' },
            { token: 'type.name',         foreground: 'FFD7A8', fontStyle: 'italic' },
            { token: 'number.int',        foreground: 'FFBE7A' },
            { token: 'number.float',      foreground: 'FFBE7A' },
            { token: 'string.quoted',     foreground: '8FF7C8' },
            { token: 'comment.line',      foreground: '6F7695', fontStyle: 'italic' },
            { token: 'operator',          foreground: 'FFC2E8' },
            { token: 'delimiter.bracket', foreground: 'FFFFFF', fontStyle: 'bold' },
            { token: 'delimiter',         foreground: '7E85A3' },
        ],

        colors: {
            'editor.background': '#0C0A14',
            'editor.foreground': '#F6F3FF',

            'editorCursor.foreground': '#FF6FAE',

            'editor.selectionBackground': '#FF6FAE33',
            'editor.inactiveSelectionBackground': '#FF6FAE18',

            'editor.lineHighlightBackground': '#171326',
            'editor.lineHighlightBorder': '#30284B',

            'editorLineNumber.foreground': '#555C7A',
            'editorLineNumber.activeForeground': '#FF6FAE',

            'editorIndentGuide.background1': '#232038',
            'editorIndentGuide.activeBackground1': '#C7A6FF99',

            'editorBracketMatch.background': '#7AE7FF22',
            'editorBracketMatch.border': '#7AE7FF',

            'editor.findMatchBackground': '#FFD7A866',
            'editor.findMatchHighlightBackground': '#FFD7A833',

            'editorWhitespace.foreground': '#242038',

            'editor.wordHighlightBackground': '#FF6FAE22',
            'editor.wordHighlightStrongBackground': '#7AE7FF22',

            'editor.selectionHighlightBackground': '#C7A6FF22',

            'scrollbarSlider.background': '#FFFFFF10',
            'scrollbarSlider.hoverBackground': '#FFFFFF22',
            'scrollbarSlider.activeBackground': '#FF6FAE55',

            'editorGutter.background': '#0C0A14',
            'minimap.background': '#0C0A14'
        }
    }
};