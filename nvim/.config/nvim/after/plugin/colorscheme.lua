vim.g.nord_italic = false
vim.g.nord_contrast = false
vim.g.nord_borders = true

local status, _ = pcall(vim.cmd, "colorscheme nord")
if not status then
	print("Colorscheme not found!")
	return
end
