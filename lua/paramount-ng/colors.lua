local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function()
  local norm = hsl(0, 0, 78)

  local base = {
    Normal {
      -- #262626
      bg = hsl(0, 0, 15),
      fg = norm,
    },

    Cursor {
      -- #a790d5
      bg = hsl(260, 45, 70),
      fg = hsl(0, 0, 78),
    },

    Comment {
      fg = hsl(0, 0, 38),
    },

    Constant {
      fg = hsl(260, 45, 70),
    },
    Character {
      fg = hsl(260, 45, 70),
    },
    Number {
      fg = hsl(260, 45, 70),
    },
    Boolean {
      fg = hsl(260, 45, 70),
    },
    Float {
      fg = hsl(260, 45, 70),
    },
    String {
      fg = hsl(260, 45, 70),
    },

    Identifier { Normal },
    Function { Identifier },

    Statement {
      -- #767676
      fg = hsl(0, 0, 46),
    },
    Conditional { Statement },
    Repeat { Statement },
    Label { Statement },
    Keyword { Statement },
    Exception { Statement },

    Operator {
      fg = norm,
      gui = "bold",
      cterm = "bold",
    },

    PreProc {
      -- #767676
      fg = hsl(0, 0, 46),
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
      -- #767676
      fg = hsl(0, 0, 46),
    },
    SpecialChar { Special },
    Tag { Special },
    Delimiter { Special },
    SpecialComment { Special },
    Debug { Special },

    MatchParen {
      bg = hsl(0, 0, 38),
      fg = norm,
    },

    -- Popup
    Pmenu {
      -- #606060
      bg = hsl(0, 0, 18),
      fg = norm,
    },
    PmenuSel {
      fg = hsl(0, 0, 100),
      bg = Cursor.bg.darken(50),
    },
    PmenuSbar {
      fg = hsl(0, 0, 100),
      bg = hsl(0, 0, 38),
    },
    PmenuThumb {
      fg = hsl(0, 0, 100),
      bg = hsl(0, 0, 38),
    },

    -- Tabline
    TabLine {
      fg = norm,
      -- #303030
      bg = hsl(0, 0, 19),
    },
    TabLineSel {
      fg = hsl(260, 45, 70),
      bg = hsl(0, 0, 38),
      cterm = "bold",
      gui = "bold",
    },
    TabLineFill {
      fg = norm,
      bg = hsl(0, 0, 19),
    },

    -- cursor shit
    CursorColumn {
      bg = hsl(0, 0, 19),
    },
    CursorLine { CursorColumn },
    ColorColumn {
      bg = hsl(0, 0, 38),
    },

    -- misc stuff?
    Underlined {
      fg = norm,
      gui = "underline",
      cterm = "underline",
    },
    Ignore {
      -- 262626
      fg = hsl(0, 0, 19),
    },
    Error {
      fg = hsl(0, 0, 19),
      bg = hsl(350, 67, 63),
      cterm = "bold",
      gui = "bold",
    },
    Todo {
      fg = hsl(260, 45, 70),
      gui = "underline",
      cterm = "underline",
    },
    SpecialKey {
      fg = hsl(156, 60, 61),
    },
    NonText {
      fg = hsl(0, 0, 46),
    },
    Directory {
      fg = hsl(197, 100, 38),
    },
    ErrorMsg { Error },
    IncSearch {
      fg = hsl(0, 0, 31),
      bg = hsl(55, 89, 57),
    },
    Search {
      fg = hsl(0, 0, 100),
      bg = Constant.fg.darken(10),
    },
    MoreMsg {
      fg = hsl(0, 0, 38),
      cterm = "bold",
      gui = "bold",
    },
    ModeMsg { MoreMsg },

    LineNr {
      fg = hsl(0, 0, 38),
    },
    CursorLineNr {
      fg = hsl(260, 45, 70),
      bg = hsl(0, 0, 19),
    },

    Question { Error },
    WarningMsg { Error },

    StatusLine {
      bg = hsl(0, 0, 19),
    },
    StatusLineNC {
      bg = hsl(0, 0, 19),
      fg = hsl(0, 0, 46),
    },

    VertSplit {
      bg = hsl(0, 0, 19),
      fg = hsl(0, 0, 19),
    },

    Title {
      -- #0008ec4
      fg = hsl(0, 0, 70),
    },

    Visual {
      bg = hsl(260, 45, 70),
      fg = hsl(0, 0, 90),
    },
    VisualNOS {
      bg = hsl(0, 0, 19),
    },

    WildMenu {
      -- #262626
      fg = hsl(0, 0, 15),
      bg = norm,
    },

    Folded {
      -- #767676
      fg = hsl(0, 0, 46),
    },
    FoldColumn {
      fg = hsl(0, 0, 19),
    },

    DiffAdd {
      -- #5FD7A7
      fg = hsl(156, 60, 61),
    },
    DiffDelete { WarningMsg },
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
      fg = hsl(156, 60, 61),
    },

    -- treesitter!
    TSAttribute {
      -- #767676
      fg = hsl(0, 0, 46),
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
      bg = hsl(0, 0, 15),
      fg = hsl(260, 45, 70),
    },
    WhichKeyGroup {
      bg = hsl(0, 0, 15),
      fg = WhichKey.fg.darken(5),
    },
    WhichKeySeparator {
      bg = hsl(0, 0, 15),
      fg = WhichKey.fg.darken(30),
    },
    WhichKeyDesc {
      bg = hsl(0, 0, 15),
      fg = hsl(0, 0, 58),
    },
    WhichKeyFloat {
      bg = hsl(0, 0, 15),
      fg = hsl(0, 0, 78),
    },
    WhichKeyValue {
      bg = hsl(0, 0, 15),
      fg = hsl(0, 0, 78),
    },

    CmpItemAbbrMatch { Constant },
    CmpItemAbbrMatchFuzzy { Constant },
  }

  return base
end)

return theme
