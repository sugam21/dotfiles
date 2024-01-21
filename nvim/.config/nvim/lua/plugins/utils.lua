return {
  -- ▶️  VIM SLIME
  {
    "jpalardy/vim-slime",
    vim.cmd([[let g:slime_target = "tmux"]]),
    keys = {
      { "c-Enter", "SlimeRegionSend<cr>", desc = "Slime send region" },
      { "c-Enter", "SlimeParagraphSend", desc = "Slime ParagraphSend" },
    },
  },
  -- ▶️  VIM-TMUX NAVIGATOR
  { "christoomey/vim-tmux-navigator" },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
  },
  -- ▶️  WEBDEV AUTOTAG
  -- {
  --   "windwp/nvim-ts-autotag",
  --   setup = function()
  --     require("nvim-treesitter.configs").setup({
  --       autotag = {
  --         enable = true,
  --       },
  --     })
  --   end,
  -- },
  -- ▶️  COMMENT
  -- {
  --   "numToStr/Comment.nvim",
  --   opts = {},
  --   lazy = false,
  --   config = function()
  --     require("Comment").setup()
  --   end,
  -- },
  -- ▶️  INDENT BLANKLINE
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   main = "ibl",
  --   opts = {},
  --   setup = function()
  --     local highlight = {
  --       "CursorColumn",
  --       "Whitespace",
  --     }
  --     require("ibl").setup({
  --       indent = { highlight = highlight, char = "" },
  --       whitespace = {
  --         highlight = highlight,
  --         remove_blankline_trail = false,
  --       },
  --       scope = { enabled = false },
  --     })
  --   end,
  -- },

  -- ▶️ CURSOR ANIMATE
  -- {
  --   "echasnovski/mini.animate",
  --   event = "VeryLazy",
  --   opts = function(_, opts)
  --     opts.scroll = {
  --       enable = false,
  --     }
  --   end,
  -- },
  -- ▶️  SMOOTH SCROOLING
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({})
    end,
  },
  -- -- ▶️  GIT SIGNS
  -- {
  --   "lewis6991/gitsigns.nvim",
  --   config = function()
  --     require("gitsigns").setup()
  --   end,
  -- },

  -- ▶️  NVIM SURROUND
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
}
