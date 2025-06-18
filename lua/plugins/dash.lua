return {
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local alpha = require('alpha')
      local dashboard = require('alpha.themes.dashboard')

      -- === Custom Banner (Replace this with your figlet art) ===
      dashboard.section.header.val = {
        [[  █████▒██▓    ▄▄▄       ███▄ ▄███▓▓█████     ██▒   █▓ ██▓ ███▄ ▄███▓]],
        [[▓██   ▒▓██▒   ▒████▄    ▓██▒▀█▀ ██▒▓█   ▀    ▓██░   █▒▓██▒▓██▒▀█▀ ██▒]],
        [[▒████ ░▒██░   ▒██  ▀█▄  ▓██    ▓██░▒███       ▓██  █▒░▒██▒▓██    ▓██░]],
        [[░▓█▒  ░▒██░   ░██▄▄▄▄██ ▒██    ▒██ ▒▓█  ▄      ▒██ █░░░██░▒██    ▒██ ]],
        [[░▒█░   ░██████▒▓█   ▓██▒▒██▒   ░██▒░▒████▒      ▒▀█░  ░██░▒██▒   ░██▒]],
        [[ ▒ ░   ░ ▒░▓  ░▒▒   ▓▒█░░ ▒░   ░  ░░░ ▒░ ░      ░ ▐░  ░▓  ░ ▒░   ░  ░]],
        [[ ░     ░ ░ ▒  ░ ▒   ▒▒ ░░  ░      ░ ░ ░  ░      ░ ░░   ▒ ░░  ░      ░]],
        [[ ░ ░     ░ ░    ░   ▒   ░      ░      ░           ░░   ▒ ░░      ░   ]],
        [[           ░  ░     ░  ░       ░      ░  ░         ░   ░         ░   ]],
        [[                                                  ░                ]],
      }


      -- === Custom Buttons ===
      dashboard.section.buttons.val = {
        dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
        dashboard.button("s", "  Search word", ":Telescope live_grep<CR>"),
        dashboard.button("l", "  Last session", ":SessionManager load_last_session<CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>")
      }

      -- Optional footer
      dashboard.section.footer.val = { "🔥 Welcome to NeoVim, hacker." }

      -- Layout adjustments
      dashboard.opts.opts.noautocmd = true

      alpha.setup(dashboard.opts)
    end
  }
}

