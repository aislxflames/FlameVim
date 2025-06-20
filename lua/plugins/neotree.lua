return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  opts = {
    window = {
      title = function(state)
        -- Use current_path or path, fallback to cwd
        local path = state.path or state.current_path or vim.loop.cwd()
        -- Get just the last folder name
        local folder = vim.fn.fnamemodify(path, ":t")
        return folder
      end,
    },
  },
}
