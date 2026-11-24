return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  dependencies = {
    {
      "echasnovski/mini.icons",
      opts = {},
      config = function(_, opts)
        require("mini.icons").setup(opts)
        require("mini.icons").mock_nvim_web_devicons()
      end,
    },
  },
  opts = { },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
