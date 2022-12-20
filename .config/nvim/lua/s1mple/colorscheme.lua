require("poimandres").setup({
	bold_vert_split = true, -- use bold vertical separators
	dim_nc_background = true, -- dim 'non-current' window backgrounds
	disable_background = false, -- disable background
	disable_float_background = false, -- disable background for floats
	disable_italics = false, -- disable italics
})

require("rose-pine").setup({ --- @usage 'main' | 'moon'
	dark_variant = "main",
	bold_vert_split = true,
	dim_nc_background = true,
	disable_background = false,
	disable_float_background = false,
	disable_italics = true,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = "base",
		panel = "base",
		border = "highlight_med",
		comment = "muted",
		link = "iris",
		punctuation = "subtle",

		error = "love",
		hint = "iris",
		info = "foam",
		warn = "gold",

		headings = {
			h1 = "iris",
			h2 = "foam",
			h3 = "rose",
			h4 = "gold",
			h5 = "pine",
			h6 = "foam",
		},
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	highlight_groups = {
		ColorColumn = { bg = "base" },
	},
})

local colorscheme = "poimandres"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	-- vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end

-- transparent
require("transparent").setup({
	enable = true, -- boolean: enable transparent
	extra_groups = { -- table/string: additional groups that should be cleared
		-- In particular, when you set it to 'all', that means all available groups
		"all",
	},
	exclude = {}, -- table: groups you don't want to clear
})

vim.cmd("hi StatusLine guibg=NONE ctermbg=NONE")
