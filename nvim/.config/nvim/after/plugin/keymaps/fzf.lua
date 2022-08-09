local keymap = vim.keymap.set
local opts = { noremap = true }

keymap('n', '<leader>p', ':FzfLua files<CR>', opts)
