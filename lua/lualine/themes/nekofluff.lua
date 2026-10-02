-- Status line theme. LazyVim's lualine picks this up automatically
-- when the colorscheme is nekofluff.
local c = require("nekofluff").colors()

local function mode(color)
  return {
    a = { fg = c.bg_dark, bg = color, gui = "bold" },
    b = { fg = color, bg = c.bg_input },
    c = { fg = c.fg, bg = c.bg_dark },
  }
end

return {
  normal = mode(c.accent),
  insert = mode(c.cursor),
  visual = mode(c.purple),
  replace = mode(c.red),
  command = mode(c.yellow),
  terminal = mode(c.cyan),
  inactive = {
    a = { fg = c.muted, bg = c.bg_dark },
    b = { fg = c.muted, bg = c.bg_dark },
    c = { fg = c.muted, bg = c.bg_dark },
  },
}
