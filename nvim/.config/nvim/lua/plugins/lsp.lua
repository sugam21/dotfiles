return {
  {

    "williamboman/mason-lspconfig.nvim",
    config = function()
      local servers = { "lua_ls", "pyright", "tailwindcss", "emmet_ls", "clangd", "jdtls", "tsserver", "cssls", "html" }
      require("mason-lspconfig").setup({
        ensure_installed = servers,
        automatic_installation = true,
      })
    end,
  },
  {
    "barrett-ruth/live-server.nvim",
    build = "pnpm add -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    config = function()
      require("live-server").setup({})
    end,
  },
}
