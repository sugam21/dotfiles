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
}
