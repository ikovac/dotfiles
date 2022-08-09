local keymap = vim.keymap.set
local opts = { noremap = true }

keymap('n', '<C-l>', '<C-w>l', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
