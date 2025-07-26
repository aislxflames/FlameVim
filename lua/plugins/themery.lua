return {
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = { "gruvbox", "lushwal", "pywal16", "catppuccin", "neopywal" },
        livePreview = true,
      })
    end
  },

  {
    "ellisonleao/gruvbox.nvim",
    'uZer/pywal16.nvim',
    "RedsXDD/neopywal.nvim",
    { "catppuccin/nvim", name = "catppuccin" },
  },

  {
    "oncomouse/lushwal.nvim",
    cmd = { "LushwalCompile" },
    dependencies = {
      { "rktjmp/lush.nvim" },
      { "rktjmp/shipwright.nvim" },
    },
    lazy = false,
  }
}
