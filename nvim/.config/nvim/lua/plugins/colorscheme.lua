return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "base16-tomorrow-night",
      --colorscheme = "base16-mountain",
      --colorscheme = "catppuccin-mocha",
      --colorscheme = "rose-pine",
      -- colorscheme = "base16-gruvbox-dark-hard",
      --colorscheme = "base16-twilight",
    },
  },
  {
    "RRethy/base16-nvim",
    priority = 1000,
    lazy = false,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "rose-pine/neovim", name = "rose-pine" },
}
