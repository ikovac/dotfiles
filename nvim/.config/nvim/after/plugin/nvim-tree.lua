local setup, nvim_tree = pcall(require, "nvim-tree")
if not setup then
	return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function open_nvim_tree()
	require("nvim-tree.api").tree.open()
end

-- Open nvim-tree on startup
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

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
