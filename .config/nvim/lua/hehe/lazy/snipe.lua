-- config file for snipe.nvim
-- refer to https://github.com/leath-dub/snipe.nvim
return {
  "leath-dub/snipe.nvim",
  keys = {
    {
      "<leader><leader>",
      function ()
        require("snipe").open_buffer_menu()
      end,
      desc = "Open Snipe buffer menu"
    }
  },
  opts = {
    ui = {
      position = "center",
    },
  },
}
