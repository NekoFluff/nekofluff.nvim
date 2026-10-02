-- Maps the palette onto Neovim highlight groups.
-- Edit a line here to change how something looks, then run :colorscheme nekofluff
local M = {}

function M.get(c, opts)
  local bg = opts.transparent and "NONE" or c.bg
  local bg_dark = opts.transparent and "NONE" or c.bg_dark
  local italic = opts.italic

  local h = {
    ---------------------------------------------------------------- editor UI
    Normal = { fg = c.fg, bg = bg },
    NormalNC = { fg = c.fg, bg = bg },
    NormalFloat = { fg = c.fg, bg = bg_dark },
    FloatBorder = { fg = c.accent, bg = bg_dark }, -- editorWidget.border
    FloatTitle = { fg = c.accent, bg = bg_dark, bold = true },
    Cursor = { fg = c.bg, bg = c.cursor },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    TermCursor = { link = "Cursor" },
    CursorLine = { bg = c.cursorline },
    CursorColumn = { bg = c.cursorline },
    CursorLineNr = { fg = c.cursor, bold = true },
    LineNr = { fg = c.line_nr },
    LineNrAbove = { link = "LineNr" },
    LineNrBelow = { link = "LineNr" },
    SignColumn = { bg = bg },
    FoldColumn = { fg = c.dim, bg = bg },
    Folded = { fg = c.muted, bg = c.bg_input },
    ColorColumn = { bg = c.bg_input },
    Visual = { bg = c.selection },
    VisualNOS = { link = "Visual" },
    Search = { fg = c.fg, bg = c.search },
    IncSearch = { fg = c.white, bg = c.cur_search, bold = true },
    CurSearch = { link = "IncSearch" },
    Substitute = { fg = c.bg, bg = c.red },
    MatchParen = { fg = c.yellow, bold = true, underline = true }, -- editorBracketMatch.border
    NonText = { fg = c.dim },
    EndOfBuffer = { fg = c.bg },
    Whitespace = { fg = c.whitespace },
    SpecialKey = { fg = c.whitespace },
    Conceal = { fg = c.gray },
    Directory = { fg = c.blue },
    Title = { fg = c.accent, bold = true },
    Question = { fg = c.green },
    MoreMsg = { fg = c.green },
    ModeMsg = { fg = c.accent, bold = true },
    MsgArea = { fg = c.fg },
    ErrorMsg = { fg = c.red },
    WarningMsg = { fg = c.yellow },
    WinSeparator = { fg = c.border, bg = bg },
    VertSplit = { link = "WinSeparator" },
    WinBar = { fg = c.fg, bg = bg },
    WinBarNC = { fg = c.muted, bg = bg },
    StatusLine = { fg = c.accent, bg = bg_dark }, -- statusBar.foreground is lime
    StatusLineNC = { fg = c.muted, bg = bg_dark },
    TabLine = { fg = c.muted, bg = c.bg },
    TabLineFill = { bg = bg_dark },
    TabLineSel = { fg = c.white, bg = c.bg, bold = true },
    Pmenu = { fg = c.fg, bg = c.bg_dark },
    PmenuSel = { bg = c.selection, bold = true },
    PmenuSbar = { bg = c.bg_dark },
    PmenuThumb = { bg = c.dim },
    PmenuKind = { fg = c.purple, bg = c.bg_dark },
    PmenuExtra = { fg = c.muted, bg = c.bg_dark },
    WildMenu = { link = "PmenuSel" },
    QuickFixLine = { bg = c.selection, bold = true },
    SpellBad = { sp = c.red, undercurl = true },
    SpellCap = { sp = c.yellow, undercurl = true },
    SpellLocal = { sp = c.blue, undercurl = true },
    SpellRare = { sp = c.purple, undercurl = true },

    ------------------------------------------------------------------- diffs
    DiffAdd = { bg = c.diff_add },
    DiffChange = { bg = c.diff_change },
    DiffDelete = { fg = c.red, bg = c.diff_delete },
    DiffText = { bg = c.diff_text },
    Added = { fg = c.green },
    Changed = { fg = c.purple },
    Removed = { fg = c.red },
    diffAdded = { fg = c.green },
    diffRemoved = { fg = c.red },
    diffChanged = { fg = c.purple },

    ------------------------------------------------------------- diagnostics
    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = c.yellow },
    DiagnosticInfo = { fg = c.blue },
    DiagnosticHint = { fg = c.purple },
    DiagnosticOk = { fg = c.green },
    DiagnosticVirtualTextError = { fg = c.red, bg = c.error_bg },
    DiagnosticVirtualTextWarn = { fg = c.yellow, bg = c.warn_bg },
    DiagnosticVirtualTextInfo = { fg = c.blue, bg = c.info_bg },
    DiagnosticVirtualTextHint = { fg = c.purple, bg = c.hint_bg },
    DiagnosticUnderlineError = { sp = c.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.blue, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.purple, undercurl = true },
    DiagnosticUnnecessary = { fg = c.comment },
    DiagnosticDeprecated = { strikethrough = true },
    LspReferenceText = { bg = c.selection },
    LspReferenceRead = { bg = c.selection },
    LspReferenceWrite = { bg = c.selection, underline = true },
    LspInlayHint = { fg = c.gray, bg = c.cursorline, italic = italic },
    LspSignatureActiveParameter = { fg = c.accent, bold = true },
    LspCodeLens = { fg = c.gray },

    ------------------------------------------------- classic syntax groups
    Comment = { fg = c.comment, italic = italic },
    Constant = { fg = c.orange },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.orange },
    Float = { fg = c.orange },
    Boolean = { fg = c.orange },
    Identifier = { fg = c.fg },
    Function = { fg = c.blue },
    Statement = { fg = c.purple },
    Conditional = { fg = c.cyan, italic = italic },
    Repeat = { fg = c.cyan, italic = italic },
    Label = { fg = c.cyan },
    Operator = { fg = c.cyan },
    Keyword = { fg = c.purple, italic = italic },
    Exception = { fg = c.cyan, italic = italic },
    PreProc = { fg = c.purple },
    Include = { fg = c.purple, italic = italic },
    Define = { fg = c.purple },
    Macro = { fg = c.cyan },
    PreCondit = { fg = c.purple },
    Type = { fg = c.yellow },
    StorageClass = { fg = c.purple, italic = italic },
    Structure = { fg = c.yellow },
    Typedef = { fg = c.yellow },
    Special = { fg = c.cyan },
    SpecialChar = { fg = c.cyan },
    Tag = { fg = c.coral },
    Delimiter = { fg = c.cyan },
    SpecialComment = { fg = c.gray, italic = italic },
    Debug = { fg = c.coral },
    Underlined = { underline = true },
    Error = { fg = c.red },
    Todo = { fg = c.bg, bg = c.yellow, bold = true },

    -------------------------------------------------- tree-sitter captures
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { fg = c.comment, italic = italic },
    ["@comment.error"] = { fg = c.bg, bg = c.red, bold = true },
    ["@comment.warning"] = { fg = c.bg, bg = c.yellow, bold = true },
    ["@comment.todo"] = { fg = c.bg, bg = c.blue, bold = true },
    ["@comment.note"] = { fg = c.bg, bg = c.teal, bold = true },

    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.red, italic = italic }, -- $this, self
    ["@variable.parameter"] = { fg = c.red }, -- variable.parameter
    ["@variable.parameter.builtin"] = { fg = c.red, italic = italic },
    ["@variable.member"] = { fg = c.fg },

    ["@constant"] = { fg = c.coral }, -- variable.other.constant
    ["@constant.builtin"] = { fg = c.orange }, -- true / false / null
    ["@constant.macro"] = { fg = c.orange },

    ["@module"] = { fg = c.yellow }, -- namespaces
    ["@module.builtin"] = { fg = c.yellow },
    ["@label"] = { fg = c.cyan },

    ["@string"] = { link = "String" },
    ["@string.documentation"] = { fg = c.comment, italic = italic },
    ["@string.regexp"] = { fg = c.cyan },
    ["@string.escape"] = { fg = c.cyan },
    ["@string.special"] = { fg = c.cyan },
    ["@string.special.symbol"] = { fg = c.green },
    ["@string.special.url"] = { fg = c.blue, underline = true },
    ["@string.special.path"] = { fg = c.green },
    ["@character"] = { fg = c.green },
    ["@character.special"] = { fg = c.cyan },
    ["@boolean"] = { fg = c.orange },
    ["@number"] = { fg = c.orange },
    ["@number.float"] = { fg = c.orange },

    ["@type"] = { fg = c.yellow }, -- classes
    ["@type.builtin"] = { fg = c.paleblue }, -- int, string, bool
    ["@type.definition"] = { fg = c.yellow },
    ["@attribute"] = { fg = c.blue, italic = italic }, -- decorators / PHP attributes
    ["@attribute.builtin"] = { fg = c.blue, italic = italic },
    ["@property"] = { fg = c.fg },

    ["@function"] = { fg = c.blue },
    ["@function.builtin"] = { fg = c.blue },
    ["@function.call"] = { fg = c.blue },
    ["@function.macro"] = { fg = c.blue },
    ["@function.method"] = { fg = c.blue },
    ["@function.method.call"] = { fg = c.blue },
    ["@constructor"] = { fg = c.blue },
    ["@operator"] = { fg = c.cyan },

    ["@keyword"] = { fg = c.purple, italic = italic },
    ["@keyword.coroutine"] = { fg = c.purple, italic = italic },
    ["@keyword.function"] = { fg = c.purple, italic = italic },
    ["@keyword.operator"] = { fg = c.purple, italic = italic },
    ["@keyword.import"] = { fg = c.purple, italic = italic },
    ["@keyword.type"] = { fg = c.purple, italic = italic },
    ["@keyword.modifier"] = { fg = c.purple, italic = italic },
    ["@keyword.repeat"] = { fg = c.cyan, italic = italic }, -- keyword.control
    ["@keyword.return"] = { fg = c.cyan, italic = italic },
    ["@keyword.exception"] = { fg = c.cyan, italic = italic },
    ["@keyword.conditional"] = { fg = c.cyan, italic = italic },
    ["@keyword.conditional.ternary"] = { fg = c.cyan },
    ["@keyword.directive"] = { fg = c.purple },
    ["@keyword.debug"] = { fg = c.coral },

    ["@punctuation.delimiter"] = { fg = c.cyan },
    ["@punctuation.bracket"] = { fg = c.cyan },
    ["@punctuation.special"] = { fg = c.cyan },

    ["@tag"] = { fg = c.coral }, -- entity.name.tag
    ["@tag.builtin"] = { fg = c.coral },
    ["@tag.attribute"] = { fg = c.purple, italic = italic },
    ["@tag.delimiter"] = { fg = c.cyan },

    ["@markup.strong"] = { fg = c.coral, bold = true },
    ["@markup.italic"] = { fg = c.coral, italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { fg = c.orange, underline = true },
    ["@markup.heading"] = { fg = c.green, bold = true },
    ["@markup.quote"] = { fg = c.gray, italic = true },
    ["@markup.math"] = { fg = c.cyan },
    ["@markup.link"] = { fg = c.purple },
    ["@markup.link.label"] = { fg = c.blue },
    ["@markup.link.url"] = { fg = c.blue, underline = true },
    ["@markup.raw"] = { fg = c.purple },
    ["@markup.raw.block"] = { fg = c.fg },
    ["@markup.list"] = { fg = c.cyan },
    ["@markup.list.checked"] = { fg = c.green },
    ["@markup.list.unchecked"] = { fg = c.muted },

    ["@diff.plus"] = { fg = c.green },
    ["@diff.minus"] = { fg = c.red },
    ["@diff.delta"] = { fg = c.purple },

    -- language-specific touches from the VS Code theme
    ["@constant.php"] = { fg = c.yellow }, -- constant.other.php
    ["@constructor.php"] = { fg = c.yellow }, -- new Foo() -> class color
    ["@property.json"] = { fg = c.purple },
    ["@property.jsonc"] = { fg = c.purple },
    ["@property.yaml"] = { fg = c.purple },
    ["@property.css"] = { fg = c.paleblue },
    ["@property.scss"] = { fg = c.paleblue },
    ["@type.css"] = { fg = c.coral },
    ["@tag.attribute.blade"] = { fg = c.purple, italic = italic },

    -------------------------------------------------- LSP semantic tokens
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.method"] = { link = "@function.method" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.variable"] = {}, -- let tree-sitter decide
    ["@lsp.mod.deprecated"] = { strikethrough = true },

    --------------------------------------------------------------- plugins
    -- gitsigns: the bright VS Code gutter colors
    GitSignsAdd = { fg = c.git_add },
    GitSignsChange = { fg = c.git_change },
    GitSignsDelete = { fg = c.git_delete },
    GitSignsAddInline = { bg = c.diff_add },
    GitSignsDeleteInline = { bg = c.diff_delete },
    GitSignsChangeInline = { bg = c.diff_change },

    -- snacks.nvim (pickers, explorer, indent guides, dashboard)
    SnacksIndent = { fg = c.guide },
    SnacksIndentScope = { fg = c.dim },
    SnacksPickerMatch = { fg = c.accent, bold = true },
    SnacksPickerBorder = { link = "FloatBorder" },
    SnacksPickerTitle = { link = "FloatTitle" },
    SnacksPickerDir = { fg = c.muted },
    SnacksPickerTree = { fg = c.guide },
    SnacksPickerGitStatusModified = { fg = c.blue },
    SnacksPickerGitStatusUntracked = { fg = c.green },
    SnacksPickerGitStatusAdded = { fg = c.green },
    SnacksPickerGitStatusDeleted = { fg = c.red },
    SnacksDashboardHeader = { fg = c.accent },
    SnacksDashboardIcon = { fg = c.cyan },
    SnacksDashboardKey = { fg = c.yellow },
    SnacksDashboardDesc = { fg = c.fg },
    SnacksDashboardFooter = { fg = c.comment },

    -- which-key
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { fg = c.purple },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyNormal = { bg = bg_dark },
    WhichKeyBorder = { link = "FloatBorder" },

    -- flash.nvim (the `s` jump labels)
    FlashLabel = { fg = "#000000", bg = c.accent, bold = true },
    FlashMatch = { fg = c.fg, bg = c.search },
    FlashCurrent = { fg = c.white, bg = c.cur_search },
    FlashBackdrop = { fg = c.dim },

    -- blink.cmp (completion menu)
    BlinkCmpMenu = { link = "Pmenu" },
    BlinkCmpMenuBorder = { link = "FloatBorder" },
    BlinkCmpMenuSelection = { link = "PmenuSel" },
    BlinkCmpLabelMatch = { fg = c.accent, bold = true },
    BlinkCmpKind = { fg = c.purple },
    BlinkCmpDoc = { link = "NormalFloat" },
    BlinkCmpDocBorder = { link = "FloatBorder" },

    -- noice (command line popup)
    NoiceCmdlinePopupBorder = { link = "FloatBorder" },
    NoiceCmdlineIcon = { fg = c.accent },

    -- bufferline (file tabs along the top)
    BufferLineIndicatorSelected = { fg = c.accent },

    -- trouble
    TroubleNormal = { fg = c.fg, bg = bg_dark },
    TroubleNormalNC = { fg = c.fg, bg = bg_dark },

    -- mini.icons fallback colors
    MiniIconsAzure = { fg = c.blue },
    MiniIconsBlue = { fg = c.blue },
    MiniIconsCyan = { fg = c.cyan },
    MiniIconsGreen = { fg = c.green },
    MiniIconsGrey = { fg = c.muted },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsPurple = { fg = c.purple },
    MiniIconsRed = { fg = c.red },
    MiniIconsYellow = { fg = c.yellow },
  }

  return h
end

return M
