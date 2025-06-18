return {
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup {
        render = 'virtual',

        virtual_symbol = '■',

        virtual_symbol_prefix = '',

        virtual_symbol_suffix = '',

        virtual_symbol_position = 'inline',

        enable_hex = true,

        enable_short_hex = true,

        enable_rgb = true,

        enable_hsl = true,

        enable_ansi = true,

        enable_hsl_without_function = true,

        enable_var_usage = true,

        enable_named_colors = true,

        enable_tailwind = false,

        custom_colors = {
          { label = '%-%-theme%-primary%-color',   color = '#0f1219' },
          { label = '%-%-theme%-secondary%-color', color = '#5a5d64' },
        },

        exclude_filetypes = {},
        exclude_buftypes = {},

        exclude_buffer = function(bufnr) end
      }
    end
  },

  { "nvzone/volt", lazy = true },

  {
    "nvzone/minty",
    cmd = { "Shades", "Huefy" },
    config = function()
      local css_named_colors = {
        red = "#ff0000",
        green = "#00ff00",
        blue = "#0000ff",
        yellow = "#ffff00",
        magenta = "#ff00ff",
        cyan = "#00ffff",
        black = "#000000",
        white = "#ffffff",
        gray = "#808080",
        lightgray = "#d3d3d3",
        darkgray = "#a9a9a9",
        darkred = "#8b0000",
        darkgreen = "#006400",
        darkblue = "#00008b",
        darkyellow = "#b8860b",
        darkmagenta = "#8b008b",
        darkcyan = "#008b8b",
        lightred = "#ff6347",
        lightgreen = "#90ee90",
        lightblue = "#add8e6",
        lightyellow = "#ffffe0",
        lightcyan = "#e0ffff",
        lightmagenta = "#ffb6c1",
        darkorange = "#ff8c00",
        orangered = "#ff4500",
        violet = "#ee82ee",
        indigo = "#4b0082",
        orchid = "#da70d6",
        plum = "#dda0dd",
        gold = "#ffd700",
        silver = "#c0c0c0",
        brown = "#a52a2a",
        beige = "#f5f5dc",
        mint = "#98ff98",
        salmon = "#fa8072",
        peach = "#ffdab9",
        coral = "#ff7f50",
        firebrick = "#b22222",
        chocolate = "#d2691e",
        tan = "#d2b48c",
        peru = "#cd853f",
        saddlebrown = "#8b4513",
        wheat = "#f5deb3",
        seashell = "#fff5ee",
        linen = "#faf0e6",
        papayawhip = "#ffefd5",
        snow = "#fffafa",
        floralwhite = "#fffaf0",
        ivory = "#fffff0",
        azure = "#f0ffff",
        mintcream = "#f5fffa",
        lavender = "#e6e6fa",
        seashell = "#fff5ee",
        antiquewhite = "#faebd7",
        cornsilk = "#fff8dc",
        blanchedalmond = "#ffebcd",
        gainsboro = "#dcdcdc",
        lightgoldenrodyellow = "#fafad2",
        darkseagreen = "#8fbc8f",
        forestgreen = "#228b22",
        limegreen = "#32cd32",
        mediumseagreen = "#3cb371",
        darkslategray = "#2f4f4f",
        steelblue = "#4682b4",
        dodgerblue = "#1e90ff",
        midnightblue = "#191970",
        royalblue = "#4169e1",
        deepskyblue = "#00bfff",
        skyblue = "#87ceeb",
        lightskyblue = "#87cefa",
        slateblue = "#6a5acd",
        lightsteelblue = "#b0c4de",
        lightslategray = "#778899",

      }

      vim.keymap.set("n", "<C-h>", function()
        local word = vim.fn.expand("<cword>")
        local hex = css_named_colors[word:lower()] or word

        if hex:match("^#%x%x%x%x%x%x$") then
          vim.cmd("normal! ciw" .. hex) -- Replace word with hex
          require("minty.huefy").open()
        else
          require("minty.huefy").open()
        end
      end, { desc = "Open Huefy on color name or hex" })
    end
  },
}
