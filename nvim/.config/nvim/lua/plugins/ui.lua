return {
  -- 🦠DISPLAY COLOR
  {
    "NvChad/nvim-colorizer.lua",
    opts = function()
      require("colorizer").setup({
        filetypes = { "html", "css", "js", "ts" },
        user_default_options = {
          RGB = true, -- #RGB hex codes
          RRGGBB = true, -- #RRGGBB hex codes
          names = true, -- "Name" codes like Blue or blue
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          AARRGGBB = true, -- 0xAARRGGBB hex codes
          rgb_fn = true, -- CSS rgb() and rgba() functions
          hsl_fn = true, -- CSS hsl() and hsla() functions
          css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
          css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
          mode = "background", -- Set the display mode.
          tailwind = true, -- Enable tailwind colors
          sass = { enable = true, parsers = { "css" } }, -- Enable sass colors
          virtualtext = "■",
          always_update = true,
        },
      })
    end,
  },
  -- 🦠Smooth Cursor
  {
    "gen740/SmoothCursor.nvim",
    config = function()
      require("smoothcursor").setup({
        cursor = "",
      })
    end,
  },
}
