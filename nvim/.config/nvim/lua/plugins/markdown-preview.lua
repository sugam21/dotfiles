return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = {
      {
        "<leader>cp",
        ft = "markdown",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview",
      },
    },

    config = {
      vim.cmd([[let g:mkdp_auto_start = 1]]),
      vim.cmd([[let g:mkdp_auto_close = 0]]),
      vim.cmd([[let g:mkdp_refresh_slow = 0]]),
      vim.cmd([[let g:mkdp_command_for_global = 0]]),
      vim.cmd([[let g:mkdp_combine_preview = 1]]),
      -- vim.cmd([[let g:mkdp_markdown_css = '/home/sugam/.config/nvim/index.css']]),
      -- -- " set to 1, nvim will open the preview window after entering the Markdown buffer
      -- -- " default: 0
      -- mkdp_auto_start = 1,
      -- -- " set to 1, the nvim will auto close current preview window when changing
      -- -- " from Markdown buffer to another buffer
      -- -- " default: 1
      -- mkdp_auto_close = 0,
      -- -- " set to 1, Vim will refresh Markdown when saving the buffer or
      -- -- " when leaving insert mode. Default 0 is auto-refresh Markdown as you edit or
      -- -- " move the cursor
      -- -- " default: 0
      -- mkdp_refresh_slow = 0,
      -- -- " set to 1, the MarkdownPreview command can be used for all files,
      -- -- " by default it can be use in Markdown files only
      -- -- " default: 0
      -- mkdp_command_for_global = 1,
    },
  },
}
