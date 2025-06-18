return {
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = { "gruvbox", "lushwal", "pywal16" },
        livePreview = true,
      })
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    'uZer/pywal16.nvim',
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
