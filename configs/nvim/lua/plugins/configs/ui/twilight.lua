local ok, twilight = pcall(require, "twilight")
if not ok then
	return
end

local config = {
	dimming = {
		alpha = 0.2,
		color = { "Normal", "#ffffff" },
		inactive = true,
	},
	context = 1,
	treesitter = true,
	expand = {
		"function",
		"method",
		"table",
		"if_statement",
	},
	exclude = {
		"TelescopeResults",
		"query",
		"tsplayground",
		"lazy",
		"lsp-installer",
		"markdown",
		"mason",
		"txt",
		"dashboard",
		"alpha",
		"NvimTree",
		"undotree",
		"diff",
		"fugitive",
		"fugitiveblame",
		"Outline",
		"SidebarNvim",
		"packer",
		"lsp-installer",
		"TelescopePrompt",
		"help",
		"telescope",
		"lspinfo",
		"Trouble",
		"null-ls-info",
		"quickfix",
		"chadtree",
		"fzf",
		"NeogitStatus",
		"terminal",
		"console",
		"term://*",
		"Term://*",
		"toggleterm",
		"qf",
		"prompt",
		"noice",
		"",
	},
}

twilight.setup(config)
