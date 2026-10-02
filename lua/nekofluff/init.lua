local M = {}

M.defaults = {
  transparent = false, -- let the terminal background show through
  italic = true, -- italic comments and keywords, like the VS Code theme
  -- change palette colors before highlights are built
  -- on_colors = function(c) c.accent = "#ff00ff" end
  on_colors = nil,
  -- change or add highlight groups
  -- on_highlights = function(h, c) h.Comment = { fg = c.gray } end
  on_highlights = nil,
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", vim.deepcopy(M.defaults), opts or {})
end

local function terminal_colors(c)
  local t = {
    "#000000", c.red, c.green, c.yellow, c.blue, c.purple, c.cyan, c.white,
    c.dim, c.red, c.green, c.yellow, c.blue, c.purple, c.cyan, c.white,
  }
  for i, color in ipairs(t) do
    vim.g["terminal_color_" .. (i - 1)] = color
  end
end

function M.load()
  -- reload the palette fresh each time so edits apply after :colorscheme
  package.loaded["nekofluff.palette"] = nil
  package.loaded["nekofluff.highlights"] = nil

  local c = vim.deepcopy(require("nekofluff.palette"))
  if M.options.on_colors then
    M.options.on_colors(c)
  end

  local h = require("nekofluff.highlights").get(c, M.options)
  if M.options.on_highlights then
    M.options.on_highlights(h, c)
  end

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "nekofluff"

  for group, spec in pairs(h) do
    vim.api.nvim_set_hl(0, group, spec)
  end
  terminal_colors(c)
end

-- palette access for other configs, e.g. require("nekofluff").colors()
function M.colors()
  return vim.deepcopy(require("nekofluff.palette"))
end

return M
