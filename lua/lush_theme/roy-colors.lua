local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym

  local norm = hsl(0, 0, 15)
  local bg =   hsl(0, 0, 96)
  local bg_subtle =      hsl(0, 0, 65)
  local bg_very_subtle = hsl(0, 0, 89)
  local color1 = hsl(32, 100, 50)
  local color2 = hsl(5, 100, 45)
  local color3 = hsl(60, 100, 38)

  local green =  hsl(130, 100, 35)
  local red =    hsl(0, 100, 50)
  local blue =   hsl(215, 90, 65)

  return {
    Normal {
      bg = bg,
      fg = norm,
    },

    Cursor {
      bg = color2,
      fg = norm,
    },
    Comment {
      fg = bg_subtle,
    },

    Constant {
      fg = color3,
    },
    Number { Constant },
    Float { Constant },
    String {
      fg = color2,
    },
    Character { String },
    Boolean {
      String,
      gui = "bold",
      cterm = "bold",
    },

    Identifier { Normal },
    Function { Identifier },

    Statement {
      fg = color1,
      -- gui = "bold",
      -- cterm = "bold",
    },
    Conditional { Statement },
    Repeat { Statement },
    Label { Statement },
    Keyword { Statement },
    Exception { Statement },

    Operator {
      fg = norm,
    },

    PreProc {
      fg = color1,
    },
    Include { PreProc },
    Define { PreProc },
    Macro { PreProc },
    PreCondit { PreProc },

    Type {
      fg = norm,
    },
    StorageClass { Type },
    Structure { Type },
    Typedef { Type },

    Special {
      fg = color3,
    },
    SpecialChar { fg = norm },
    Tag { fg = norm },
    Delimiter { fg = norm },
    SpecialComment { fg = norm },
    Debug { fg = norm },

    MatchParen {
      bg = bg_subtle,
      fg = norm,
    },

    -- Popup
    Pmenu {
      -- #606060
      fg = norm,
      bg = bg_very_subtle,
    },
    PmenuSel {
      fg = norm,
      bg = color1,
    },
    PmenuSbar {
      fg = norm,
      bg = bg_subtle,
    },
    PmenuThumb {
      fg = norm,
      bg = bg_subtle,
    },

    -- Tabline
    TabLine {
      fg = norm,
      -- #303030
      bg = bg_subtle,
    },
    TabLineSel {
      fg = norm,
      bg = bg,
    },
    TabLineFill {
      fg = norm,
      bg = bg_very_subtle,
    },

    -- cursor shit
    CursorColumn {
      bg = bg_very_subtle
    },
    CursorLine { CursorColumn },
    ColorColumn {
      bg = hsl(0, 0, 93),
    },

    -- misc stuff?
    Underlined {
      fg = norm,
      gui = "underline",
      cterm = "underline",
    },
    Ignore {
      fg = bg,
    },
    Error {
      fg = bg,
      bg = red,
      cterm = "bold",
    },
    Todo {
      fg = color2,
      gui = "bold",
      cterm = "underline",
    },
    SpecialKey {
      fg = green,
    },
    NonText {
      fg = hsl(0, 0, 46),
    },
    Directory {
      fg = hsl(197, 100, 38),
    },
    ErrorMsg { Error },
    IncSearch {
      bg = color3,
      fg = hsl(0, 0, 31),
    },
    Search {
      bg = green,
      fg = hsl(0, 0, 15),
    },
    MoreMsg {
      fg = hsl(0, 0, 46),
      cterm = "bold",
      gui = "bold",
    },
    ModeMsg { MoreMsg },

    LineNr {
      fg = bg_subtle,
    },
    CursorLineNr {
      fg = color2,
      bg = bg_very_subtle,
    },

    Question { fg = red },
    WarningMsg { fg = color3 },

    StatusLine {
      bg = bg,
    },
    StatusLineNC {
      bg = bg_very_subtle,
    },

    VertSplit {
      bg = bg_very_subtle,
      fg = bg_very_subtle,
    },

    Title {
      -- #0008ec4
      fg = hsl(197, 100, 38),
    },

    Visual {
      bg = bg_subtle,
      fg = norm,
    },
    VisualNOS {
      bg = bg_very_subtle,
    },

    WildMenu {
      -- #262626
      fg = bg,
      bg = norm,
    },

    Folded {
      -- #767676
      fg = hsl(0, 0, 46)
    },
    FoldColumn {
      fg = bg_subtle,
    },

    DiffAdd {
      fg = green,
    },
    DiffDelete {
      fg = red
    },
    DiffChange {
      -- A89C14
      fg = hsl(55, 79, 37),
    },
    DiffText {
      -- 008EC4
      fg = hsl(197, 100, 38),
    },
    SignColumn {
      -- #5FD7A7
      fg = green,
    },

    -- treesitter!
    TSAttribute {
      -- #767676
      fg = color1,
    },
    TSBoolean { Boolean },
    TSCharacter { Character },
    TSNumber { Number },
    TSFloat { Float },
    TSCharacterSpecial { Character },
    TSConstant { Constant },
    TSConstBuiltin { Constant },
    TSConstMacro { Constant },
    TSString { Constant },
    TSStringRegex { Constant },
    TSStringEscape { Comment },
    TSStringSpecial { Statement },
    TSLiteral { Constant },
    TSFuncBuiltin { fg = Constant.fg.lighten(40) },

    TSComment { Comment },
    TSConditional { Conditional },

    TSConstructor { Statement },
    TSDebug { Statement },
    TSDefine { Statement },
    TSError { Error },
    TSException { Statement },
    TSField { fg = Identifier.fg.darken(10) },
    TSFuncMacro { Macro },
    TSInclude { Include },
    TSKeyword { Keyword },
    TSKeywordFunction { Keyword },
    TSKeywordOperator { Keyword },
    TSKeywordReturn { Keyword },
    TSLabel { Statement },

    TSMethod { fg = Function.fg.darken(15) },
    TSFunction { Identifier },
    TSNamespace { Identifier },
    TSNone { Comment },
    TSOperator { fg = Operator.fg.darken(10) },
    TSParameter { Identifier },
    TSParameterReference { Identifier },
    TSPreProc { PreProc },
    TSProperty { fg = Function.fg.darken(10) },
    TSSymbol { fg = Identifier.fg.darken(20) },

    TSPunctDelimiter { Statement },
    TSPunctBracket { Statement },
    TSPunctSpecial { Statement },

    TSRepeat { Repeat },

    TSStorageClass { fg = Identifier.fg.darken(60) },

    TSTag { Identifier },
    TSTagAttribute { Statement },
    TSTagDelimiter { Statement },

    TSText { Comment },
    TSStrong { Identifier },
    TSEmphasis { Identifier },
    TSUnderline { Identifier, gui = "underline" },
    TSStrike { Identifier, gui = "strikethrough" },
    TSTitle { Title },
    TSURI { TSUnderline },

    TSMath { Statement },
    TSTextReference { Constant },
    TSEnvironment { Statement },
    TSEnvironmentName { Identifier },
    TSNote { Identifier },
    TSWarning { Constant, gui = "underline" },
    TSDanger { Error, gui = "underline" },
    TSType { Statement },
    TSTypeBuiltin { Constant },
    TSVariable { Identifier },
    TSVariableBuiltin { Constant },

    -- Plugin-specific support
    WhichKey {
      bg = bg_very_subtle,
      fg = color2,
    },
    WhichKeyGroup {
      bg = bg_very_subtle,
      fg = WhichKey.fg.darken(5),
    },
    WhichKeySeparator {
      bg = bg_very_subtle,
      fg = WhichKey.fg.darken(30),
    },
    WhichKeyDesc {
      bg = bg_very_subtle,
      fg = hsl(0, 0, 58),
    },
    WhichKeyFloat {
      bg = bg_very_subtle,
      fg = hsl(0, 0, 78),
    },
    WhichKeyValue {
      bg = bg_very_subtle,
      fg = hsl(0, 0, 78),
    },

    CmpItemAbbrMatch { Constant },
    CmpItemAbbrMatchFuzzy { Constant },
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    -- ColorColumn  { }, -- Columns set with 'colorcolumn'
    -- Conceal      { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- Character under the cursor
    -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory    { }, -- Directory names (and other special names in listings)
    -- DiffAdd      { }, -- Diff mode: Added line |diff.txt|
    -- DiffChange   { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete   { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    -- ErrorMsg     { }, -- Error messages on the command line
    -- VertSplit    { }, -- Column separating vertically split windows
    -- Folded       { }, -- Line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    -- SignColumn   { }, -- Column where |signs| are displayed
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    -- LineNr       { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- MatchParen   { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Normal       { }, -- Normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    -- Pmenu        { }, -- Popup menu: Normal item.
    -- PmenuSel     { }, -- Popup menu: Selected item.
    -- PmenuSbar    { }, -- Popup menu: Scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine   { }, -- Status line of current window
    -- StatusLineNC { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine      { }, -- Tab pages line, not active tab page label
    -- TabLineFill  { }, -- Tab pages line, where there are no labels
    -- TabLineSel   { }, -- Tab pages line, active tab page label
    -- Title        { }, -- Titles for output from ":set all", ":autocmd" etc.
    -- Visual       { }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   { }, -- Warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    -- Comment        { }, -- Any comment

    -- Constant       { }, -- (*) Any constant
    -- String         { }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    -- Identifier     { }, -- (*) Any variable name
    -- Function       { }, --   Function name (also: methods for classes)

    -- Statement      { }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    -- PreProc        { }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    -- Type           { }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    -- Special        { }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
