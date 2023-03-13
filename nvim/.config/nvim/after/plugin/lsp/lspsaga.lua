local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	definition = {
		edit = "<CR>",
		vsplit = "<C-v>",
		quit = "q",
	},
	lightbulb = {
		enable = false,
	},
	scroll_preview = {
		scroll_down = "<C-d>",
		scroll_up = "<C-u>",
	},
})
