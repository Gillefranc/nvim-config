-- Read current theme mode from ~/.config/theme/mode
local mode_file = vim.fn.expand("~/.config/theme/mode")
local mode = "dark"
if vim.fn.filereadable(mode_file) == 1 then
  mode = vim.fn.readfile(mode_file)[1] or "dark"
end

local ayu_variant = mode == "light" and "ayu-light" or "ayu-dark"

return {
  {
    "Shatur/neovim-ayu",
    overrides = {
      Normal = { bg = "None" },
      NormalFloat = { bg = "none" },
      ColorColumn = { bg = "None" },
      SignColumn = { bg = "None" },
      Folded = { bg = "None" },
      FoldColumn = { bg = "None" },
      CursorLine = { bg = "None" },
      CursorColumn = { bg = "None" },
      VertSplit = { bg = "None" },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = ayu_variant,
    },
  },
}
