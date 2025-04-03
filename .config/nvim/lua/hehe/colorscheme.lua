-- Set the colorscheme here
local colorscheme = "catppuccin-mocha"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!!!")
  return
end

-- You can configure highlights by doing something like:
vim.cmd.hi 'Comment gui=none'

if string.find(colorscheme, "catppuccin") then
  -- Line number colors for catppuccin
  vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#fab387' })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#a6e3a1', bold = true })
  vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#fab387' })
elseif string.find(colorscheme, "tokyonight") then
  -- Line number colors for tokyonight
  vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#ff9e64' })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#9fff80', bold = true })
  vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#ff9e64' })
end
