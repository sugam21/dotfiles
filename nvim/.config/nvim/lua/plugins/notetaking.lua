return {
  -- ▶️  MATHEMATICAL NOTATION
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

  -- ▶️  MARKDOWN PREVIEW
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
    vim.cmd([[let g:mkdp_combine_preview = 1]]),
  },
  -- ▶️   ORG MODE
  {
    "nvim-orgmode/orgmode",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter", lazy = true },
    },
    event = "VeryLazy",
    config = function()
      -- Load treesitter grammar for org
      require("orgmode").setup_ts_grammar()

      -- Setup treesitter
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { "org" },
        },
        ensure_installed = { "org" },
      })

      -- Setup orgmode
      require("orgmode").setup({
        org_agenda_files = "~/orgfiles/**/*",
        org_default_notes_file = "~/orgfiles/refile.org",
      })
    end,
  },
  -- ▶️   VIM TABLE
  { "dhruvasagar/vim-table-mode" },

  -- ▶️  ORG WIKI
  {
    "ranjithshegde/orgWiki.nvim",
    config = function()
      require("orgWiki").setup({
        wiki_path = { "~/Documents/Orgs/" },
        diary_path = "~/Documents/Orgs/diary/",
      })
    end,
  },
  {
    "nvim-neorg/neorg",
    tag = "latest",
    ft = "norg",
    after = "nvim-treesitter",
    "nvim-telescope",
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.norg.dirman"] = {
            config = {
              workspaces = {
                work = "~/notes/work",
                home = "~/notes/home",
              },
            },
          },
        },
      })
    end,
  },
}
