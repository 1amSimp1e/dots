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

-- -- Transparent
--
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
--
-- vim.opt.fillchars = "eob: "
--
local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
