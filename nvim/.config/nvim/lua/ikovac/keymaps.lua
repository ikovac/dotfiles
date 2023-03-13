local keymap = vim.keymap
local opts = { noremap = true }

-- make split windows equal width & height
keymap.set("n", "<leader>se", "<C-w>=")
-- close current split window
keymap.set("n", "<leader>sx", ":close<CR>")
-- yank to clipboard
keymap.set("n", "<leader>y", '"+y', opts)
keymap.set("v", "<leader>y", '"+y', opts)
-- Move selection up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Keep cursor in the middle while scrolling and jumping
-- to the next search result
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Quicklist
keymap.set("n", "<leader>q", ":copen<CR>") -- open
keymap.set("n", "<leader>qn", ":cnext<CR>") -- next result
keymap.set("n", "<leader>qp", ":cprevious<CR>") -- prev result
