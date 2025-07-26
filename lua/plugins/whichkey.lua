return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  opts = {},

  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.add({
      { "<leader>f",  group = "Ess / UI" },
      { "<leader>c",  group = "Code" },
      { "<leader>g",  group = "Git" },
      { "<leader>t",  group = "Terminal" }
    })
  end,

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Show Binds",
    },
  },
}
