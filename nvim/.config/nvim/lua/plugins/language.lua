return {
  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  { "folke/neoconf.nvim", enabled = false },
  { "folke/neodev.nvim", opts = {} },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    enabled = false,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    enabled = false,
  },
}
