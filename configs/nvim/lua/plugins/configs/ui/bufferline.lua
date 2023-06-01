local status_ok, bl = pcall(require, "bufferline")
if not status_ok then
	return
end

bl.setup({
	options = {
		close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
		offsets = { { filetype = "NeoTree", text = "", padding = 1 } },
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		color_icons = true,
		diagnostics = false,
		diagnostics_update_in_insert = false,
		diagnostics_indicator = false,
		always_show_bufferline = false,
        themable = true,
        show_buffer_icons = false,
	},
})
