local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local spaces2 = {
	function()
		return " "
	end,
	padding = -10,
	color = { bg = "#2C2E2F", fg = "#E8E3E3" },
	separator = {  right = "" },
}

local spaces = {
	function()
		return " "
	end,
	padding = -10,
}

local current_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")

local folder = {
	function()
		return current_dir
	end,

	-- separator = { left = "█", right = "█" },
	separator = { right = "" },
	color = { bg = "#1D1D20", fg = "#E8E3E3" },
}

local filetype = {
	"filetype",
	colored = true, -- Displays filetype icon in color if set to true
	icon = { align = "left" }, -- Display filetype icon on the right hand side
	icon_only = true,
}

local size = { "filesize", separator = { left = "", right = "" }, margin = 0.5 }
local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = {
		"error",
		"warn",
		"hint",
	},
	symbols = {
		hint = " ",
		error = " ",
		warn = " ",
		info = " ",
	},
	colored = true,
	always_visible = true,
	color = { bg = "#1D1D20", fg = "#BDCBD6" },
	separator = { right = "" },
}

local branch = {
	"branch",
	icon = "",
	separator = { right = "" },
}

local diff = {
	"diff",
	colored = true,
	symbols = {
		added = " ",
		modified = " ",
		removed = " ",
	},
	separator = { left = "", right = "" },
}

local icons = {
	function()
		return "󰀘 "
	end,
	padding = 0.3,
	separator = { left = "█", right = "█" },
}

local modes = {
	"mode",
	separator = { left = "", right = "" },
	padding = 0.4,
}

local filename = {
	"filename",
	file_status = false, -- displays file status (readonly status, modified status)
	path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path},
	separator = { left = "█", right = "█" },
	symbols = {
		modified = "", -- Text to show when the file is modified.
		readonly = "", -- Text to show when the file is non-modifiable or readonly.
	},
	color = { bg = "#1D1D20", fg = "#BDCBD6" },
}

local filetypes = {
	"filetype",
	color = { bg = "#1D1D20", fg = "#BDCBD6" },
	icon_only = true, -- Display only an icon for filetype
}

local indent = function()
	return "" .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

local lsp_progess = function()
	msg = msg or "  LSP Inactive"
	local buf_clients = vim.lsp.buf_get_clients()
	if next(buf_clients) == nil then
		-- TODO: clean up this if statement
		if type(msg) == "boolean" or #msg == 0 then
			return "  LSP Inactive"
		end
		return msg
	end
	local buf_ft = vim.bo.filetype
	local buf_client_names = {}
	local copilot_active = false
	local null_ls = require("null-ls")
	local alternative_methods = {
		null_ls.methods.DIAGNOSTICS,
		null_ls.methods.DIAGNOSTICS_ON_OPEN,
		null_ls.methods.DIAGNOSTICS_ON_SAVE,
	}

	-- add client
	for _, client in pairs(buf_clients) do
		if client.name ~= "null-ls" and client.name ~= "copilot" then
			table.insert(buf_client_names, client.name)
		end

		if client.name == "copilot" then
			copilot_active = true
		end
	end

	function list_registered_providers_names(filetype)
		local s = require("null-ls.sources")
		local available_sources = s.get_available(filetype)
		local registered = {}
		for _, source in ipairs(available_sources) do
			for method in pairs(source.methods) do
				registered[method] = registered[method] or {}
				table.insert(registered[method], source.name)
			end
		end
		return registered
	end

	function list_registered(filetype)
		local registered_providers = list_registered_providers_names(filetype)
		local providers_for_methods = vim.tbl_flatten(vim.tbl_map(function(m)
			return registered_providers[m] or {}
		end, alternative_methods))
		return providers_for_methods
	end

	function formatters_list_registered(filetype)
		local registered_providers = list_registered_providers_names(filetype)
		return registered_providers[null_ls.methods.FORMATTING] or {}
	end

	-- formatters
	-- local supported_formatters = formatters_list_registered(buf_ft)
	-- vim.list_extend(buf_client_names, supported_formatters)

	-- linters
	local supported_linters = list_registered(buf_ft)
	vim.list_extend(buf_client_names, supported_linters)
	local unique_client_names = vim.fn.uniq(buf_client_names)

	local language_servers = "󱅶  " .. table.concat(unique_client_names, ", ") .. ""

	if copilot_active then
		language_servers = "   " .. "| " .. language_servers
	end

	return language_servers
end

lualine.setup({
	options = {
		globalstatus = true,
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "packer", "neo-tree" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = {
			icons,
			filetypes,
			filename,
		},
		lualine_b = {

        },
		lualine_c = {
			branch,
			diff,
		},
		lualine_x = {
			{
				function()
					return "󰞔 "
				end,
				separator = { left = "", right = "█" },
				color = { bg = "#ecd28b", fg = "#000000" },
				padding = 0.3,
			},
			{
				indent,
				separator = { right = "" },
				color = { bg = "#1D1D20", fg = "#E8E3E3" },
				-- separator = { left = "█", right = "█" },
			},

			spaces,
			{
				function()
					return "󰉋 "
				end,

				-- separator = { left = "█", right = "█" },
				separator = { left = "", right = "█" },
				color = { bg = "#E89982", fg = "#000000" },
				padding = 0.01,
			},
			folder,
			spaces,
			{
				function()
					return " "
				end,
				-- separator = { left = "█", right = "█" },
				separator = { left = "", right = "█" },
                color = { bg = "#6791C9", fg = "#000000" },
				-- color = { bg = "#78B892", fg = "#000000" },
				padding = -10000,
			},

			{
				"location",
				-- separator = { left = "█", right = "█" },
				separator = { right = "" },
				color = { bg = "#1D1D20", fg = "#E8E3E3" },
			},
			spaces,
		},
		lualine_y = {},
		lualine_z = {},
	},
})
