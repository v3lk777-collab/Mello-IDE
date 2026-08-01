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

    girls: {
        base: 'vs-dark',
        inherit: true,

        rules: [
            { token: 'keyword.def',       foreground: 'FF8FC7', fontStyle: 'bold' },
            { token: 'keyword.control',   foreground: 'D8B8FF', fontStyle: 'bold' },
            { token: 'keyword.io',        foreground: '9DEDFF', fontStyle: 'bold' },
            { token: 'variable',          foreground: 'FBEFFF' },
            { token: 'identifier',        foreground: 'FBEFFF' },
            { token: 'type.name',         foreground: 'FFE2B8', fontStyle: 'italic' },
            { token: 'number.int',        foreground: 'FFCB93' },
            { token: 'number.float',      foreground: 'FFCB93' },
            { token: 'string.quoted',     foreground: 'B0FADB' },
            { token: 'comment.line',      foreground: '9089B3', fontStyle: 'italic' },
            { token: 'operator',          foreground: 'FFD1EE' },
            { token: 'delimiter.bracket', foreground: 'FFFDF7', fontStyle: 'bold' },
            { token: 'delimiter',         foreground: 'A29BC4' },
        ],

        colors: {
            'editor.background':                    '#180F24',
            'editor.foreground':                    '#FBEFFF',
            'editorCursor.foreground':               '#FF8FC7',
            'editor.selectionBackground':            '#FF8FC740',
            'editor.inactiveSelectionBackground':    '#FF8FC722',
            'editor.lineHighlightBackground':        '#251A38',
            'editor.lineHighlightBorder':            '#FFB6E166',
            'editorLineNumber.foreground':           '#6E6690',
            'editorLineNumber.activeForeground':     '#FF8FC7',
            'editorIndentGuide.background1':         '#2B2141',
            'editorIndentGuide.activeBackground1':   '#D8B8FFAA',
            'editorBracketMatch.background':         '#9DEDFF2A',
            'editorBracketMatch.border':              '#9DEDFF',
            'editor.findMatchBackground':             '#FFE2B870',
            'editor.findMatchHighlightBackground':    '#FFE2B840',
            'editorWhitespace.foreground':            '#2E2748',
            'editor.wordHighlightBackground':         '#FF8FC72A',
            'editor.wordHighlightStrongBackground':   '#9DEDFF2A',
            'editor.selectionHighlightBackground':    '#D8B8FF2A',
            'scrollbarSlider.background':             '#FFFFFF14',
            'scrollbarSlider.hoverBackground':        '#FF8FC72E',
            'scrollbarSlider.activeBackground':       '#FF8FC766',
            'editorGutter.background':                '#180F24',
            'minimap.background':                     '#180F24',
        }
    }
};