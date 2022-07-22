local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    documentation = {
      --winhighlight = 'Normal:CmpPmenu,CursorLine:PmenuSel,FloatBorder:CmpPmenuBorder',
      --scrollbar = '|',
      --border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
    completion = {
      --winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
      --border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    }
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    -- ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ["<CR>"] = cmp.mapping.confirm { 
      select = true,
    },
    ["<Tab>"] = cmp.mapping(function(fallback)
       if cmp.visible() then
          cmp.select_next_item()
       elseif require("luasnip").expand_or_jumpable() then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
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
       elseif require("luasnip").jumpable(-1) then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
       else
          fallback()
       end
    end, {
       "i",
       "s",
    }),
  }),
  sources = cmp.config.sources{
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'cmp_tabnine' },
    { name = 'path' },
    --{ name = 'spell' },
    { name = 'emoji' },
  },

  formatting = {
    format = lspkind.cmp_format({with_text = false, maxwidth = 50})
  },
  sorting = {
    comparators = {
        cmp.config.compare.offset,
        cmp.config.compare.exact,
        cmp.config.compare.score,
        require "cmp-under-comparator".under,
        cmp.config.compare.kind,
        cmp.config.compare.sort_text,
        cmp.config.compare.length,
        cmp.config.compare.order,
    },
  },
})
