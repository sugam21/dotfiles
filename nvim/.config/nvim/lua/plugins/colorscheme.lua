return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 2000,
    lazy = false,
    config = function()
      require("gruvbox").setup({
        palette_overrides = {
          bright_green = "#899B53",
          neutral_green = "#98971a",
          bright_red = "#ea6962",
          bright_yellow = "#d8a657",
          bright_blue = "#7daea3",
          bright_purple = "#d3869b",
          bright_aqua = "#7daea3",
          bright_orange = "#e78a4e",
          neutral_orange = "#e78a4e",
          faded_orange = "#E78A4E",
          dark0 = "#19181b",
          dark0_hard = "#19181b",
          dark0_soft = "#19181b",
          dark1 = "#282828",
          dark2 = "#3c3836",
          dark3 = "#3c3836",
          dark4 = "#3c3836",
          light1 = "#dbbe98",
          gray = "#7c6f64",
        },
        invert_selection = true,
        invert_tabline = true,
        invert_intend_guides = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = true,
          folds = true,
        },
      })
    end,
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        transparent = false,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
        overrides = function(colors)
          local theme = colors.theme
          return {
            -- Borderless telescope
            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
            -- Dark popup menu
            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
            PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = theme.ui.bg_p2 },
          }
        end,
      })
    end,
  },
}
