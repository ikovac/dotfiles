local setup, nvim_tree = pcall(require, "nvim-tree")
if not setup then
	return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- configure nvim-tree
nvim_tree.setup({
	view = {
		side = "left",
		adaptive_size = true,
	},
	git = {
		ignore = false, -- Show gitignore files
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
})
