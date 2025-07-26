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
      { "<leader>g",  group = "Git" }
    })
  end,

  keys = {
    {
      "<leader>f",
      function()
        require("which-key").show({ global = true })
      end,
      desc = "",
    },
  },
}
