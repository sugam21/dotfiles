return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    requires = { "rktjmp/lush.nvim" },
    opts = {
      terminal_colors = true,
      undercurl = true,
      underline = true,
      contrast = "hard",
      invert_selection = false,
      inverse = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      palette_overrides = { dark0_hard = "#151515" },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      colors = {
        theme = {
          dragon = {
            ui = {
              bg = "#151515",
            },
          },
        },
      },
    },
  },
}
