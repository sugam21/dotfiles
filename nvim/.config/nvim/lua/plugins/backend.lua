return {
  "christoomey/vim-tmux-navigator",
  -- NEORG
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      require("neorg").setup({
        load = {
          ["core.export.markdown"] = {},
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {
            config = {
              icon_preset = "basic",
            },
          }, -- Adds pretty icons to your documents
          ["core.summary"] = {},
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
          },
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
                machineLearning = "~/notes/machineLearning",
                technology = "~/notes/technology",
              },
            },
          },
        },
      })
    end,
  },
}
