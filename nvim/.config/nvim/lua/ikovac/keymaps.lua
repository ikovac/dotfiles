local keymap = vim.keymap
local opts = { noremap = true }

-- make split windows equal width & height
keymap.set("n", "<leader>se", "<C-w>=")
-- close current split window
keymap.set("n", "<leader>sx", ":close<CR>")
-- yank to clipboard
keymap.set("n", "<leader>y", '"+y', opts)
keymap.set("v", "<leader>y", '"+y', opts)
