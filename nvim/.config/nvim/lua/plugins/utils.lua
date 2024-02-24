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
  -- ▶️  SMOOTH SCROOLING
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({})
    end,
  },
}
