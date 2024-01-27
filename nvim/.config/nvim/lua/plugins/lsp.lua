return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    local servers = { "lua_ls", "pyright", "tailwindcss", "emmet_ls", "clangd", "jdtls", "tsserver", "cssls", "html" }
    require("mason-lspconfig").setup({
      ensure_installed = servers,
      automatic_installation = true,
    })
  end,
}
