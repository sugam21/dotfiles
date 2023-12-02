return {
  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "catppuccin",
      colorscheme = "no-clown-fiesta",
      --colorscheme = "rose-pine",
    },
  },
  { "aktersnurra/no-clown-fiesta.nvim", lazy = false, priority = 999, opts = { transparent = true } },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "main",
      transparent_background = true,
      groups = {
        background = "base",
        background_nc = "_experimental_nc",
        panel = "surface",
        panel_nc = "base",
        border = "highlight_med",
        comment = "muted",
        link = "iris",
        punctuation = "subtle",

        error = "love",
        hint = "iris",
        info = "foam",
        warn = "gold",

        headings = {
          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },
        -- or set all headings at once
        -- headings = 'subtle'
      },
      highlight_groups = {
        ColorColumn = { bg = "rose" },

        -- Blend colours against the "base" background
        CursorLine = { bg = "foam", blend = 10 },
        StatusLine = { fg = "love", bg = "love", blend = 10 },

        -- By default each group adds to the existing config.
        -- If you only want to set what is written in this config exactly,
        -- you can set the inherit option:
        Search = { bg = "gold", inherit = false },
      },
    },
  },
  {
    "catppuccin/nvim",
    flavour = "mocha",
    name = "catppuccin",
    opts = {
      term_colors = true,
      transparent_background = true,
      no_bold = false,
      -- color_overrides = {
      --   mocha = {
      --     all = {
      --       text = "#ffffff",
      --     },
      --     -- base = "#0b0c0f",
      --     -- mantle = "#0E0F13",
      --     -- crust = "#0E0F13",
      --     -- green = "#89BD9E",
      --     -- red = "#E95678",
      --     -- yellow = "#FAB795",
      --     -- magenta = "#F075B5",
      --     -- blue = "#BAD7FF",
      --     --lavender = "#7E97AB",
      --},
      --},
      -- custom_highlights = function(colors)
      --   return {
      --     TabLineSel = { bg = colors.pink },
      --     CmpBorder = { fg = colors.surface2 },
      --     Pmenu = { bg = colors.none },
      --   }
      -- end,
    },
  },

  -- For coloring hex codes
  -- color html colors
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        filetypes = { "*" },
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = true, -- "Name" codes like Blue or blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = false, -- 0xAARRGGBB hex codes
        rgb_fn = false, -- CSS rgb() and rgba() functions
        hsl_fn = false, -- CSS hsl() and hsla() functions
        css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = "background", -- Set the display mode.
        -- Available methods are false / true / "normal" / "lsp" / "both"
        -- True is same as normal
        tailwind = false, -- Enable tailwind colors
        -- parsers can contain values used in |user_default_options|
        sass = { enable = false, parsers = { "css" } }, -- Enable sass colors
        virtualtext = "■",
        -- update color values even if buffer is not focused
        -- example use: cmp_menu, cmp_docs
        always_update = false,
        -- all the sub-options of filetypes apply to buftypes
        buftypes = {},
      })
    end,
  },
}
