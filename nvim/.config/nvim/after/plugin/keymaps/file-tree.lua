local keymap = vim.keymap.set
local opts = { noremap = true }

keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
keymap('n', '<leader>f', ':NvimTreeFindFile<CR>', opts)
