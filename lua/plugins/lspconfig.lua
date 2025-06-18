return {
  {
    "kevinhwang91/nvim-ufo"
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {},
        automatic_installation = true,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    cconfig = function()
      local lspconfig = require("lspconfig")
      local capabilities = require('blink.cmp').get_lsp_capabilities()


      local mason_lspconfig = require("mason-lspconfig")

      mason_lspconfig.setup({
        automatic_installation = true,
      })

      mason_lspconfig.setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
          })
        end,
      })
    end
  },
}
