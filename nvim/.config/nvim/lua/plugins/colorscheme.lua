return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyodark",
    },
  },
  {
    "tiagovla/tokyodark.nvim",
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
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
