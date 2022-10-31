local keymap = vim.keymap.set
local opts = { noremap = true }

keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
keymap('n', '<leader>fe', ':NvimTreeFindFile<CR>', opts)
