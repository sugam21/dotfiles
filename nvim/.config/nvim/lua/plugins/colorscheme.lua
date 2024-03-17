return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "base16-mountain",
      -- colorscheme = "base16-gruvbox-material-dark-hard",
      colorscheme = "gruvbox",
    },
  },
  {
    "RRethy/base16-nvim",
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
          bright_aqua = "#458588",
          neutral_orange = "#e78a4e",
          faded_orange = "#E78A4E",
          dark0 = "#1d1d1d",
        },
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
      })
    end,
  },
}
