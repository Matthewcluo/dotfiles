vim.g.mapleader = " "

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Move highlighted lines up/down with J/K in Visual Mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Yank into system clipboard with <leader>y
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])

-- Delete line into void buffer with <leader>dd
vim.keymap.set({'n', 'v'}, '<leader>dd', '\"_dd', { desc = '[D]elete to void buffer' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- For oil.nvim: opens oil.nvim in the file's parent directory
vim.keymap.set('n', '\\', '<CMD>Oil<CR>', { desc = 'Open parent directory in Oil' })

-- nvim-tree:
-- toggle file explorer
vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file [e]xplorer' })
-- toggle file explorer on current file
vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file explorer on current [f]ile' })
-- collapse file explorer
vim.keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = '[C]ollapse file explorer' })
-- refresh file explorer
vim.keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = '[R]efresh file explorer' })

-- flash.nvim:
-- normal flash jump
vim.keymap.set({ 'n', 'x', 'o' }, 'f', function()
  require('flash').jump()
end, { desc = 'flash jump mode' })
-- flash treesitter highlighter
-- can select different highlight groups within a paragraph
vim.keymap.set({ 'n', 'x', 'o' }, '<leader>ff', function()
  require('flash').treesitter()
end, { desc = '[F]lash Treesitter mode' })

-- render-markdown toggle keymap
vim.keymap.set('n', '<leader>rm', '<CMD>RenderMarkdown toggle<CR>', { desc = '[R]ender [M]arkdown' })

-- floaterminal (toggle the floating terminal)
-- NOTE: this is not an added plugin but rather an example
-- plugin written by TJ DeVries (and chat gippity) located in
-- nvim/plugin rather than nvim/lua/custom/plugins
vim.keymap.set('n', '<leader>tt', '<cmd>Floaterminal<CR>', { desc = '[T]oggle Floating [T]erminal' })
