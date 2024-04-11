return {
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
}
