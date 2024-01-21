local opt = vim.opt
vim.g.mapleader = " "

-- TAB
opt.tabstop = 4 -- default tab
opt.shiftwidth = 4 -- default indentation
opt.softtabstop = 4
opt.expandtab = true -- expands tab to space
opt.smartindent = true
opt.wrap = false

-- SEARCH
opt.incsearch = true -- incremental search -> highlights the search text
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- APPEARANCE
opt.relativenumber = true
opt.termguicolors = true
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

-- BEHAVIOUR
opt.hidden = true
opt.swapfile = false
opt.backup = false
-- opt.undodir = vim.fn.expand("~/.vim/undodir") -- undo file to available
-- opt.undofile = true
opt.backspace = "indent,eol,start" -- backspace works in indentation, end of line and start
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append("-") -- treat word-word as a single word
opt.mouse:append("a") -- mouse is available
opt.clipboard:append("unnamedplus") -- available system clipboard
opt.modifiable = true
opt.encoding = "UTF-8"
-- disable netrw for lua file manager
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Highlight the current cursor line
vim.api.nvim_exec(
  [[
  hi CursorLine   guibg=#383b41 ctermbg=235
  hi CursorLineNR guifg=#d7d7d7 guibg=#383b41 ctermbg=235
]],
  false
)

-- Enable cursor line highlighting
vim.api.nvim_exec(
  [[
  augroup CursorLine
    autocmd!
    autocmd WinEnter,FocusGained * setlocal cursorline
    autocmd WinLeave,FocusLost   * setlocal nocursorline
  augroup END
]],
  false
)
-- No highlight on the left most column cause its annoying
vim.api.nvim_command([[
  autocmd ColorScheme * hi SignColumn guibg=NONE
]])

opt.cursorline = false -- Enable highlighting of the current line
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.cmd([[hi LineNr guibg=NONE]])
-- Change the color of neovim split
