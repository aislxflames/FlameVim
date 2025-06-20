return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.opt.termguicolors = true

    require("bufferline").setup({
      options = {
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    })

    -- Track if the buffer was ever modified
    local function mark_modified(args)
      pcall(vim.api.nvim_buf_set_var, args.buf, "ever_modified", true)
    end

    vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI", "InsertLeave" }, {
      callback = mark_modified,
    })

    -- Autocommand to close buffers that were never modified
    vim.api.nvim_create_autocmd("BufLeave", {
      callback = function(args)
        local bufnr = args.buf

        -- Check if buffer was ever modified
        local ok, ever_modified = pcall(vim.api.nvim_buf_get_var, bufnr, "ever_modified")
        if ok and ever_modified then
          return -- It was modified, keep it open
        end

        -- Skip special buffers
        if vim.api.nvim_buf_get_option(bufnr, "buftype") ~= "" then
          return
        end

        -- Don't close the last listed buffer
        local listed = vim.fn.getbufinfo({ buflisted = 1 })
        if #listed <= 1 then
          return
        end

        -- Close the buffer safely
        vim.schedule(function()
          if vim.api.nvim_buf_is_valid(bufnr) then
            vim.api.nvim_buf_delete(bufnr, { force = false })
          end
        end)
      end,
    })
  end,
}

