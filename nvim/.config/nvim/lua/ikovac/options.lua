vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8

-- Add color column ruler
vim.opt.colorcolumn = "80"

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Ignore case while searching
vim.opt.ignorecase = true
-- If you include mixed case in your search, assumes you want case-sensitive
vim.opt.smartcase = true

-- Don't wrap lines
vim.opt.wrap = false

-- Time in ms if nothing is typed, swap will be written to disk
vim.opt.updatetime = 50
-- Always show signcolumn - column for displaying git changes, errors etc...
vim.opt.signcolumn = "yes"
-- Highlight the current line
vim.opt.cursorline = true

vim.opt.termguicolors = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Open new vertical splits right
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.background = "dark"
