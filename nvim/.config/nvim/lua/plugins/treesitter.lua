return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c",
        "vim",
        "vimdoc",
        "query",
        "lua",
        "luadoc",
        "python",
        "cpp",
        "javascript",
        "css",
        "html",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
