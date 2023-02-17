local status_ok, sc = pcall(require,'scrollbar')

if not status_ok then 
  return
end;

sc.setup({
	show = true,
	show_in_active_only = false,
	set_highlights = true,
	folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
	max_lines = false, -- disables if no. of lines in buffer exceeds this
	handle = {
		text = " ",
		color = "#2A2C3F",
		cterm = nil,
		-- highlight = "CursorColumn",
		hide_if_all_visible = false, -- Hides handle if all lines are visible
	},
	marks = {
		Cursor = {
			-- text = "•",
			text = "─",
			priority = 0,
			color = "#2A2C3F",
			cterm = nil,
			-- highlight = "Normal",
		},
		Search = {
			text = { "-", "=" },
			priority = 1,
			color = nil,
			cterm = nil,
			highlight = "Search",
		},
		Error = {
			text = { "-", "=" },
			priority = 2,
			color = nil,
			cterm = nil,
			highlight = "DiagnosticVirtualTextError",
		},
		Warn = {
			text = { "-", "=" },
			priority = 3,
			color = nil,
			cterm = nil,
			highlight = "DiagnosticVirtualTextWarn",
		},
		Info = {
			text = { "-", "=" },
			priority = 4,
			color = nil,
			cterm = nil,
			highlight = "DiagnosticVirtualTextInfo",
		},
		Hint = {
			text = { "-", "=" },
			priority = 5,
			color = nil,
			cterm = nil,
			highlight = "DiagnosticVirtualTextHint",
		},
		Misc = {
			text = { "-", "=" },
			priority = 6,
			color = nil,
			cterm = nil,
			highlight = "Normal",
		},
		GitAdd = {
			text = "┆",
			priority = 7,
			color = nil,
			cterm = nil,
			highlight = "GitSignsAdd",
		},
		GitChange = {
			text = "┆",
			priority = 7,
			color = nil,
			cterm = nil,
			highlight = "GitSignsChange",
		},
		GitDelete = {
			text = "▁",
			priority = 7,
			color = nil,
			cterm = nil,
			highlight = "GitSignsDelete",
		},
	},
	excluded_buftypes = {
		"terminal",
	},
	excluded_filetypes = {
		"prompt",
		"TelescopePrompt",
		"noice",
		"alpha",
		"NvimTree",
		"",
	},
	autocmd = {
		render = {
			"BufWinEnter",
			"TabEnter",
			"TermEnter",
			"WinEnter",
			"CmdwinLeave",
			"TextChanged",
			"VimResized",
			"WinScrolled",
		},
		clear = {
			"BufWinLeave",
			"TabLeave",
			"TermLeave",
			"WinLeave",
		},
	},
	handlers = {
		cursor = true,
		diagnostic = false,
		gitsigns = false, -- Requires gitsigns
		handle = true,
		search = false, -- Requires hlslens
	},
})
