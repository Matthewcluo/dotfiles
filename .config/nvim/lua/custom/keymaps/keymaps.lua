-- A file to set all my custom keymaps for the plugins that I add myself
-- keymaps that were set from kickstart will stay in the main init.lua
-- to find keymaps, <leader>sk ([s]earch [k]eymaps)

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
