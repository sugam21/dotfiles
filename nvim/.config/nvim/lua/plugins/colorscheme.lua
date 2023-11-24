return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "no-clown-fiesta",
    },
  },
  { "aktersnurra/no-clown-fiesta.nvim" },
  {
    "EdenEast/nightfox.nvim",
    priority = 999,
    lazy = false,
    opts = {
      -- Compiled file's destination location
      compile_path = vim.fn.stdpath("cache") .. "/nightfox",
      compile_file_suffix = "_compiled", -- Compiled file suffix
      transparent = false, -- Disable setting background
      terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
      dim_inactive = false, -- Non focused panes set to alternative background
      module_default = true, -- Default enable value for modules
      colorblind = {
        enable = false, -- Enable colorblind support
        simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
        severity = {
          protan = 1, -- Severity [0,1] for protan (red)
          deutan = 1, -- Severity [0,1] for deutan (green)
          tritan = 1, -- Severity [0,1] for tritan (blue)
        },
      },
      styles = { -- Style to be applied to different syntax groups
        comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
        conditionals = "NONE",
        constants = "NONE",
        functions = "NONE",
        keywords = "NONE",
        numbers = "NONE",
        operators = "NONE",
        strings = "NONE",
        types = "NONE",
        variables = "NONE",
      },
      inverse = { -- Inverse highlight for different types
        match_paren = false,
        visual = false,
        search = false,
      },
      modules = { -- List of various plugins and additional options
        -- ...
      },
    },
    palettes = {},
    specs = {},
    groups = {},
  }, -- lazy

  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "main",
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
  -- {
  --   "catppuccin/nvim",
  --   flavour = "mocha",
  --   name = "catppuccin",
  --   opts = {
  --     term_colors = true,
  --     no_bold = false,
  --     color_overrides = {
  --       mocha = {
  --         base = "#11111b",
  --         mantle = "#0c0c12",
  --         crust = "#31314e",
  --         green = "#89BD9E",
  --       },
  --     },
  --     custom_highlights = function(colors)
  --       return {
  --         TabLineSel = { bg = colors.pink },
  --         CmpBorder = { fg = colors.surface2 },
  --         Pmenu = { bg = colors.none },
  --       }
  --     end,
  --   },
  -- },
}
