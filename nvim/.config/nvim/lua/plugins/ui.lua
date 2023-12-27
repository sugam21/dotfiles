return {
  {
    "echasnovski/mini.surround",
    enabled = false,
  },
  {
    "echasnovski/mini.ai",
    enabled = false,
  },
  {
    "RRethy/vim-illuminate",
    enabled = false,
  },
  {
    "folke/todo-comments.nvim",
    enabled = false,
  },
  {
    "rcarriga/nvim-notify",
    enabled = false,
  },
  {
    "stevearc/dressing.nvim",
    enabled = false,
  },
  {
    "folke/noice.nvim",
    enabled = false,
  },
  { "MunifTanjim/nui.nvim", enabled = true },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = {
      theme = "hyper",
    },
  },
  {
    "goolord/alpha-nvim",
    enabled = false,
  },
  {
    "ggandor/flit.nvim",
    enabled = false,
  },
  {
    "folke/edgy.nvim",
    enabled = false,
  },
  {
    "jpalardy/vim-slime",
    vim.cmd([[let g:slime_target = "tmux"]]),
    keys = {
      { "c-Enter", "SlimeRegionSend<cr>", desc = "Slime send region" },
      { "c-Enter", "SlimeParagraphSend", desc = "Slime ParagraphSend" },
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = function()
      require("colorizer").setup()
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    vim.cmd([[let g:mkdp_auto_start = 1]]),
    vim.cmd([[let g:mkdp_auto_close = 0]]),
    vim.cmd([[let g:mkdp_refresh_slow = 0]]),
  },
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
  {
    "nvim-neorg/neorg",
    run = ":Neorg sync-parsers", -- This is the important bit!
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                work = "~/notes/work",
                personal = "~/notes/home",
              },
            },
          },
          ["core.concealer"] = {
            config = {
              icon_preset = "varied",
            },
          },
          ["core.completion"] = { config = { engine = "nvim-cmp" } },
          ["core.highlights"] = {
            config = {
              dim = {
                tags = {
                  ranged_verbatim = {
                    code_block = {
                      affect = "foreground",
                      percentage = -50,
                    },
                  },
                },
              },
            },
          },
        },
      })
    end,
  },
  {
    "jbyuki/nabla.nvim",
    keys = {
      {
        "<leader>n",
        function()
          require("nabla").popup()
        end,
        desc = "Nabla math render",
      },
    },
  },
}
