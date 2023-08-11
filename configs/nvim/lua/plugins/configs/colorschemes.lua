local colors = require("catppuccin.palettes").get_palette()

require("catppuccin").setup({
	flavour = "mocha",
	color_overrides = {
		mocha = {
			base = "#141521",
		},
	},
	custom_highlights = {
		Comment = { fg = colors.overlay1 },
		LineNr = { fg = colors.overlay1 },
	},
	integrations = {
		cmp = true,
		dap = {
			enabled = true,
			enable_ui = true,
		},
		fidget = true,
		gitsigns = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = true,
		},
		markdown = true,
		mason = true,
		native_lsp = {
			enabled = true,
		},
		neogit = true,
		neotree = true,
		notify = true,
		nvimtree = true,
		symbols_outline = true,
		telescope = true,
		treesitter = true,
		treesitter_context = true,
		which_key = true,
		ts_rainbow = true,
		barbecue = {
			dim_dirname = true,
		},
	},
})


require("onedarkpro").setup({
	colors = {
		red = "#e08282",
		blue = "#6791c9",
        green = "#81c19b",
        purple = "#a9a1e1",
        cyan = "#7DC4CC",
		dark = {
			bg = "#101012",
		},
	},

})

-- Transparent

-- vim.api.nvim_create_autocmd("ColorScheme", {
-- 	pattern = "*",
-- 	callback = function()
-- 		local hl_groups = {
-- 			"Normal",
-- 			"SignColumn",
-- 			"NormalNC",
-- 			"TelescopeBorder",
-- 			"NeoTreeNormal",
-- 			"EndOfBuffer",
-- 			"MsgArea",
--             "LuaLine",
--             "LineNr",
--             "Bufferline",
-- 		}
-- 		for _, name in ipairs(hl_groups) do
-- 			vim.cmd(string.format("highlight %s ctermbg=none guibg=none", name))
-- 		end
-- 	end,
-- })
-- vim.opt.fillchars = "eob: "
--
require('material').setup({

    contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        non_current_windows = false, -- Enable contrasted background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
    },

    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = true  },
        keywords = {  underline = true  },
        functions = { --[[ bold = true, undercurl = true ]] },
        variables = {},
        operators = {},
        types = {},
    },

    plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "dap",
        -- "dashboard",
        -- "gitsigns",
        -- "hop",
        -- "indent-blankline",
        "lspsaga",
        -- "mini",
        -- "neogit",
        -- "neorg",
        -- "nvim-cmp",
        "nvim-navic",
        "nvim-tree",
    },

    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = true, -- Disable borders between verticaly split windows
        background = true, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = true -- Enable higher contrast text for darker style
    },

    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    custom_colors = nil, -- If you want to override the default colors, set this to a function

    custom_highlights = {}, -- Overwrite highlights with your own
})

--
local colorscheme = "material"

vim.g.material_style = "deep ocean"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
