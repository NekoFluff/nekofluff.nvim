-- Colors taken from the VS Code theme "Better Material Theme Darker High Contrast".
-- VS Code uses see-through colors (e.g. #ffffff70); Neovim needs solid ones,
-- so those were blended onto the editor background (#212121).
return {
  -- backgrounds
  bg = "#212121", -- editor.background
  bg_dark = "#1a1a1a", -- sidebar, panels, status bar, floating windows
  bg_input = "#2b2b2b", -- input.background
  cursorline = "#171717", -- editor.lineHighlightBackground (#00000050)
  selection = "#383838", -- editor.selectionBackground (#61616150)
  guide = "#303030", -- editorIndentGuide.background (#42424270)
  border = "#2b2b2b",

  -- foregrounds
  fg = "#eeffff", -- editor.foreground
  white = "#ffffff",
  comment = "#838383", -- comment (#ffffff70)
  line_nr = "#838383", -- editorLineNumber.foreground (#ffffff70)
  muted = "#848484", -- tab.inactiveForeground
  whitespace = "#545454", -- editorWhitespace.foreground (#eeffff40)
  dim = "#4a4a4a",
  gray = "#65737e",

  -- accents
  accent = "#c6ff00", -- tab.activeBorder / statusBar.foreground / widget borders
  cursor = "#00ff00", -- editorCursor.foreground / active line number

  -- syntax (Material palette)
  red = "#ff5370",
  coral = "#f07178",
  orange = "#f78c6c",
  yellow = "#ffcb6b",
  green = "#c3e88d",
  cyan = "#89ddff",
  blue = "#82aaff",
  purple = "#c792ea",
  paleblue = "#b2ccd6",
  teal = "#80cbc4",

  -- git gutter
  git_add = "#9bfa03",
  git_change = "#fff019",
  git_delete = "#ff0000",

  -- search
  search = "#34506e", -- editor.findMatchHighlightBackground
  cur_search = "#3a7f82", -- editor.findMatchBackground

  -- diff backgrounds
  diff_add = "#2c3326", -- diffEditor.insertedTextBackground
  diff_delete = "#3d252a", -- diffEditor.removedTextBackground
  diff_change = "#26303f",
  diff_text = "#34506e",

  -- diagnostic virtual-text backgrounds (10% tint)
  error_bg = "#372629",
  warn_bg = "#373228",
  info_bg = "#2b2f37",
  hint_bg = "#322c35",
}
