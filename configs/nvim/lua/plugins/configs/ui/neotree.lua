local status_ok, ntree = pcall(require, "neo-tree")

if not status_ok then
	return
end

ntree.setup({
	popup_border_style = "rounded",
	enable_git_status = true,
	icon = {
		folder_closed = "",
		folder_open = "",
		folder_empty = "ﰊ",
		default = "*",
		highlight = "NeoTreeFileIcon",
	},
	window = {
		position = "left",
		width = 30,
	},
})
