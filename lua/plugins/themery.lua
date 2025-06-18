return {
  {
  "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {"gruvbox", "lushwal"},
        livePreview = true,
      })
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
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
