local opt = vim.opt
opt.cursorline = false -- Enable highlighting of the current line
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.cmd([[hi LineNr guibg=NONE]])
