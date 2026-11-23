import { editor } from "monaco-editor";

export const editorThemes: Record<string, editor.IStandaloneThemeData> = {
    melloKids: {
        base: "vs-dark",
        inherit: true,

        rules: [
            { token: "keyword.def", foreground: "A855F7", fontStyle: "bold" },
            { token: "keyword.control", foreground: "C026FF", fontStyle: "bold" },
            { token: "keyword.io", foreground: "14B8A6", fontStyle: "bold" },

            { token: "function", foreground: "F472B6", fontStyle: "bold" },
            { token: "function.builtin", foreground: "38BDF8", fontStyle: "bold" },
            { token: "function.method", foreground: "2DD4BF" },

            { token: "variable", foreground: "60A5FA" },
            { token: "type.name", foreground: "C084FC", fontStyle: "italic" },
            { token: "type.keyword", foreground: "A78BFA", fontStyle: "bold" },
            { token: "constant", foreground: "FBBF24", fontStyle: "bold" },

            { token: "number.int", foreground: "FBBF24" },
            { token: "number.float", foreground: "F59E0B" },
            { token: "number.hex", foreground: "F59E0B" },
            { token: "number.binary", foreground: "F59E0B" },
            { token: "number.octal", foreground: "F59E0B" },

            { token: "string.quoted", foreground: "34D399" },
            { token: "comment.line", foreground: "64748B", fontStyle: "italic" },

            { token: "operator", foreground: "14B8A6" },
            { token: "delimiter.bracket", foreground: "FBBF24", fontStyle: "bold" },
            { token: "delimiter", foreground: "475569" },
        ],

        colors: {
            "editor.background": "#000000",
            "editor.foreground": "#E0E7FF",

            "editor.lineHighlightBackground": "#1E1135",
            "editor.lineHighlightBorder": "#4C1D95",

            "editor.selectionBackground": "#4C1D9540",
            "editor.inactiveSelectionBackground": "#312E8140",

            "editorCursor.foreground": "#A855F7",
            "editorCursor.background": "#000000",

            "editorLineNumber.foreground": "#475569",
            "editorLineNumber.activeForeground": "#A855F7",

            "editorIndentGuide.background1": "#1E1135",
            "editorIndentGuide.activeBackground1": "#4C1D9540",

            "editorBracketMatch.background": "#FBBF2415",
            "editorBracketMatch.border": "#FBBF2460",

            "editorBracketHighlight.foreground1": "#F472B6",
            "editorBracketHighlight.foreground2": "#2DD4BF",
            "editorBracketHighlight.foreground3": "#FBBF24",
            "editorBracketHighlight.foreground4": "#818CF8",

            "scrollbarSlider.background": "#4C1D9525",
            "scrollbarSlider.hoverBackground": "#4C1D9540",
            "scrollbarSlider.activeBackground": "#A855F750",

            "editorGutter.background": "#000000",

            "editor.findMatchBackground": "#A855F740",
            "editor.findMatchHighlightBackground": "#A855F720",

            "editor.wordHighlightBackground": "#A855F720",
            "editor.wordHighlightStrongBackground": "#A855F740",
            "editor.selectionHighlightBackground": "#A855F720",

            "editorWidget.background": "#11101A",
            "editorWidget.border": "#312E45",

            "editorSuggestWidget.background": "#11101A",
            "editorSuggestWidget.border": "#312E45",
            "editorSuggestWidget.selectedBackground": "#312044",
            "editorSuggestWidget.highlightForeground": "#C084FC",

            "editorHoverWidget.background": "#11101A",
            "editorHoverWidget.border": "#312E45",

            "editorWhitespace.foreground": "#252035",
            "minimap.background": "#000000",
        },
    },

    girls: {
        base: "vs-dark",
        inherit: true,

        rules: [
            { token: "keyword.def", foreground: "FF8FC7", fontStyle: "bold" },
            { token: "keyword.control", foreground: "D8B8FF", fontStyle: "bold" },
            { token: "keyword.io", foreground: "9DEDFF", fontStyle: "bold" },

            { token: "function", foreground: "FF8FC7", fontStyle: "bold" },
            { token: "function.builtin", foreground: "9DEDFF", fontStyle: "bold" },
            { token: "function.method", foreground: "B9A4FF" },

            { token: "variable", foreground: "FBEFFF" },
            { token: "identifier", foreground: "FBEFFF" },
            { token: "type.name", foreground: "FFE2B8", fontStyle: "italic" },
            { token: "type.keyword", foreground: "D8B8FF", fontStyle: "bold" },
            { token: "constant", foreground: "FFE2B8", fontStyle: "bold" },

            { token: "number.int", foreground: "FFCB93" },
            { token: "number.float", foreground: "FFCB93" },
            { token: "number.hex", foreground: "FFCB93" },
            { token: "number.binary", foreground: "FFCB93" },
            { token: "number.octal", foreground: "FFCB93" },

            { token: "string.quoted", foreground: "B0FADB" },
            { token: "comment.line", foreground: "9089B3", fontStyle: "italic" },

            { token: "operator", foreground: "FFD1EE" },
            { token: "delimiter.bracket", foreground: "FFFDF7", fontStyle: "bold" },
            { token: "delimiter", foreground: "A29BC4" },
        ],

        colors: {
            "editor.background": "#180F24",
            "editor.foreground": "#FBEFFF",

            "editorCursor.foreground": "#FF8FC7",
            "editorCursor.background": "#180F24",

            "editor.selectionBackground": "#FF8FC740",
            "editor.inactiveSelectionBackground": "#FF8FC722",

            "editor.lineHighlightBackground": "#251A38",
            "editor.lineHighlightBorder": "#FFB6E166",

            "editorLineNumber.foreground": "#6E6690",
            "editorLineNumber.activeForeground": "#FF8FC7",

            "editorIndentGuide.background1": "#2B2141",
            "editorIndentGuide.activeBackground1": "#D8B8FFAA",

            "editorBracketMatch.background": "#9DEDFF2A",
            "editorBracketMatch.border": "#9DEDFF",

            "editorBracketHighlight.foreground1": "#FF8FC7",
            "editorBracketHighlight.foreground2": "#9DEDFF",
            "editorBracketHighlight.foreground3": "#FFE2B8",
            "editorBracketHighlight.foreground4": "#D8B8FF",

            "editor.findMatchBackground": "#FFE2B870",
            "editor.findMatchHighlightBackground": "#FFE2B840",

            "editorWhitespace.foreground": "#2E2748",

            "editor.wordHighlightBackground": "#FF8FC72A",
            "editor.wordHighlightStrongBackground": "#9DEDFF2A",
            "editor.selectionHighlightBackground": "#D8B8FF2A",

            "scrollbarSlider.background": "#FFFFFF14",
            "scrollbarSlider.hoverBackground": "#FF8FC72E",
            "scrollbarSlider.activeBackground": "#FF8FC766",

            "editorGutter.background": "#180F24",
            "minimap.background": "#180F24",

            "editorWidget.background": "#21152F",
            "editorWidget.border": "#493254",

            "editorSuggestWidget.background": "#21152F",
            "editorSuggestWidget.border": "#493254",
            "editorSuggestWidget.selectedBackground": "#382447",
            "editorSuggestWidget.highlightForeground": "#FF8FC7",

            "editorHoverWidget.background": "#21152F",
            "editorHoverWidget.border": "#493254",
        },
    },
};