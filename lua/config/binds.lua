vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = "Neotree" })

vim.keymap.set('n', '<leader>ft', ':Themery<CR>', { desc = "Theme Switcher" })
vim.keymap.set('n', '<leader>fm', ':Mason<CR>', { desc = "Mason menu" })
vim.keymap.set('n', '<leader>fl', ':Lazy<CR>', { desc = "Lazy menu" })
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>',{desc = "Telescope"})


vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Documentation" })

vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = "Format Code" })
vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })


vim.keymap.set("n", "<leader>gp", ':Gitsigns preview_hunk<CR>', { desc = "Git preview" })
vim.keymap.set("n", "<leader>gt", ':Gitsigns toggle_current_line_blame<CR>', { desc = "Git line blame toggle" })

