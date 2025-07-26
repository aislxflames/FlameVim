-- Addkeymap namespaces using wich.nvim

vim.keymap.set('n', '<leader>e', ':Neotree filesystem toggle left<CR>', { desc = "Neotree" })

vim.keymap.set('n', '<leader>fe', ':Neotree filesystem toggle float<CR>', { desc = "Neotree Float" })
vim.keymap.set('n', '<leader>ft', ':Themery<CR>', { desc = "Theme Switcher" })
vim.keymap.set('n', '<leader>fm', ':Mason<CR>', { desc = "Mason menu" })
vim.keymap.set('n', '<leader>fl', ':Lazy<CR>', { desc = "Lazy menu" })
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = "Telescope" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Documentation" })

vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = "Format Code" })
vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, { desc = "References" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })

vim.keymap.set("n", "<leader>th", ':TermNew name=Horizontal size=10 direction=horizontal<CR>', {desc = "Horizontal"})
vim.keymap.set("n", "<leader>tv", ':TermNew name=Vertical size=10 direction=vertical<CR>', {desc = "Vertical"})
vim.keymap.set("n", "<leader>tf", ':TermNew name=Floating size=10 direction=float<CR>', {desc = "Floating"})
vim.keymap.set("n", "<leader>tc", ':TermExec name=Cava cmd=cava direction=vertical size=16 <CR>', {desc = "Cava"})
vim.keymap.set("n", "<C-t>", ':ToggleTerm<CR>', {desc = "ToggleTerm"})
vim.keymap.set('t', '<C-t>', [[<C-\><C-n>]], { noremap = true, silent = true })

vim.keymap.set("n", "<leader>gp", ':Gitsigns preview_hunk<CR>', { desc = "Git: Preview Hunk" })
vim.keymap.set("n", "<leader>gt", ':Gitsigns toggle_current_line_blame<CR>', { desc = "Git: Toggle Line Blame" })
vim.keymap.set("n", "<leader>gl", ':vertical Git log<CR>', { desc = "Git: Show Log (vertical)" })
vim.keymap.set("n", "<leader>ga", ':vertical Git add ', { desc = "Git: Add Files" })
vim.keymap.set("n", "<leader>gc", ':vertical Git commit<CR>', { desc = "Git: Commit" })
vim.keymap.set("n", "<leader>gup", ':Git push<CR>', { desc = "Git: Push to Remote" })
vim.keymap.set("n", "<leader>gua", ':Git remote add origin ', { desc = "Git: Add Remote Origin" })
