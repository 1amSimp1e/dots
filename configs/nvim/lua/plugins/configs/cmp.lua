local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
	return
end

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
	local col = vim.fn.col(".") - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

local icons = {
	kind = require("plugins.configs.icons").get("kind"),
	type = require("plugins.configs.icons").get("type"),
	cmp = require("plugins.configs.icons").get("cmp"),
}
  -- local cmp_window = require "cmp.config.window"

local function border(hl_name)
  return {
    { "╭", hl_name },
    { "─", hl_name },
    { "╮", hl_name },
    { "│", hl_name },
    { "╯", hl_name },
    { "─", hl_name },
    { "╰", hl_name },
    { "│", hl_name },
  }

end
local function cmp_format(opts)
	opts = opts or {}

	return function(entry, vim_item)
		if opts.before then
			vim_item = opts.before(entry, vim_item)
		end

		local kind_symbol = opts.symbol_map[vim_item.kind] or icons.kind.Undefined
		local source_symbol = opts.symbol_map[entry.source.name] or icons.cmp.undefined

		vim_item.menu = ""
		vim_item.kind = string.format("%s %s" , kind_symbol, vim_item.kind)

		if opts.maxwidth ~= nil then
			if opts.ellipsis_char == nil then
				vim_item.abbr = string.sub(vim_item.abbr, 1, opts.maxwidth)
			else
				local label = vim_item.abbr
				local truncated_label = vim.fn.strcharpart(label, 0, opts.maxwidth)
				if truncated_label ~= label then
					vim_item.abbr = truncated_label .. opts.ellipsis_char
				end
			end
		end
		return vim_item
	end
end

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
		["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		["<C-c>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		-- Accept currently selected item. If none selected, `select` first item.
		-- Set `select` to `false` to only confirm explicitly selected items.
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expandable() then
				luasnip.expand()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif check_backspace() then
				fallback()
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
	}),
    formatting = {
	fields = { "menu", "abbr", "kind" },
	format = function(entry, vim_item)
		local kind_map = vim.tbl_deep_extend("force", icons.kind, icons.type, icons.cmp)
		local kind = cmp_format({
			maxwidth = 28,
			symbol_map = kind_map,
		})(entry, vim_item)
		return kind
	end,
    },
	sources = {
		{ name = "nvim_lsp" },
		{ name = "copilot" },
		{ name = "luasnip_choice" },
		{ name = "snippy" },
		{ name = "nvim_lua" },
		{ name = "vsnip" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	},
	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	},
	window = {
      winhighlight = "Normal:CmpDoc",
      completion = {
            border='rounded',
            scrollbar = false,
        },
	},
	sorting = {
		comparators = {
			cmp.config.compare.offset,
			cmp.config.compare.exact,
			cmp.config.compare.score,
			require("cmp-under-comparator").under,
			cmp.config.compare.kind,
			cmp.config.compare.sort_text,
			cmp.config.compare.length,
			cmp.config.compare.order,
		},
	},
	experimental = {
		ghost_text = false,
	},
})
