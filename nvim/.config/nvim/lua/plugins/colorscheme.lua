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
          bright_green = "#b8bb26",
          neutral_green = "#98971a",
          bright_red = "#ea6962",
          bright_yellow = "#d8a657",
          bright_blue = "#83a598",
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
}
