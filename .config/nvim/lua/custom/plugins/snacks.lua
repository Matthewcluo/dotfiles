-- config file for snacks.nvim
-- refer to https://github.com/folke/snacks.nvim?tab=readme-ov-file

return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {},
  keys = {
    {
      '<leader>lg',
      function()
        require('snacks').lazygit()
      end,
      desc = 'Lazygit',
    },
    {
      '<leader>gl',
      function()
        require('snacks').lazygit.log()
      end,
      desc = 'Lazygit Logs',
    },
  },
}
