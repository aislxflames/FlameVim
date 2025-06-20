return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  opts = {},

  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    -- Register groups using new spec (list of tables)
    wk.register({
      { "<leader>c", group = "Code" },
      { "<leader>f", group = "Ess / UI" },
      { "<leader>g", group = "Git" },
    })
  end,

  keys = {
    {
      "<leader>?",
      function()
        local notify_orig = vim.notify
        vim.notify = function() end

        local ok, _ = pcall(function()
          require("which-key").show("")
        end)

        vim.notify = notify_orig
      end,
      desc = "WhichKey: Show all keybindings",
    },
  },
}

