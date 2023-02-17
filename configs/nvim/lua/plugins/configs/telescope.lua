local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		prompt_prefix = " ",
		selection_caret = " ",
		path_display = { "smart" },
		file_ignore_patterns = { ".git/", "node_modules" },

		mappings = {
			i = {
				["<C-j>"] = actions.cycle_history_next,
				["<C-k>"] = actions.cycle_history_prev,
				["<Down>"] = actions.move_selection_next,
				["<Up>"] = actions.move_selection_previous,
				["<esc>"] = actions.close,
			},
		},
	},
	pickers = {
		find_files = {
			theme = "dropdown",
		},
		live_grep = {
			theme = "dropdown",
		},
		codeactions = {
			theme = "dropdown",
		},
	},
	extensions = {
		["ui-select"] = {},
	},
	telescope.load_extension("ui-select"),
})
