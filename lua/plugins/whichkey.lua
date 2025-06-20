return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  opts = {
    -- You can silence the spec checker here if you want
    -- disable = { mappings = true },
  },

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show("") -- show all mappings
      end,
      desc = "WhichKey: Show all keybindings",
    },
  },

  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    -- ✅ Use the style which-key expects to silence warnings
    wk.register({
      { "<leader>c", group = "Code" },
      { "<leader>f", group = "Ess / UI" },
      { "<leader>g", group = "Git" },
    })
  end,
}

