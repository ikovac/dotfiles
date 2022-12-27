local nord_status, nord = pcall(require, "nord")
if not nord_status then
	return
end

vim.g.nord_italic = false
vim.g.nord_contrast = false
vim.g.nord_borders = true
vim.g.nord_bold = false

nord.set()
