return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "catppuccin/nvim",
    flavour = "mocha",
    name = "catppuccin",
    opts = {
      term_colors = true,
      no_bold = false,
      color_overrides = {
        mocha = {
          base = "#11111b",
          mantle = "#0c0c12",
          crust = "#31314e",
          green = "#89BD9E",
        },
      },
      custom_highlights = function(colors)
        return {
          TabLineSel = { bg = colors.pink },
          CmpBorder = { fg = colors.surface2 },
          Pmenu = { bg = colors.none },
        }
      end,
    },
  },
}
