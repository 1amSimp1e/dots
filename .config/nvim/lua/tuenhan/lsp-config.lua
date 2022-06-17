local nvim_lsp = require('lspconfig')
local lsp_installer = require("nvim-lsp-installer")
local protocol = require("vim.lsp.protocol")
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  --vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>lf', '<cmd>lua vim.lsp.buf.format { async = true }<CR>', opts)
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.format({ async = true })' ]]


-- protool symbol kind {}
protocol.CompletionItemKind = {
  '', -- Text
  '', -- Method
  '', -- Function
  '', -- Constructor
  '', -- Field
  '', -- Variable
  '', -- Class
  'ﰮ', -- Interface
  '', -- Module
  '', -- Property
  '', -- Unit
  '', -- Value
  '', -- Enum
  '', -- Keyword
  '﬌', -- Snippet
  '', -- Color
  '', -- File
  '', -- Reference
  '', -- Folder
  '', -- EnumMember
  '', -- Constant
  '', -- Struct
  '', -- Event
  'ﬦ', -- Operator
  '', -- TypeParameter
}
end
-- set up completions:
local capabilities = require('cmp_nvim_lsp').update_capabilities(
vim.lsp.protocol.make_client_capabilities()
)

vim.diagnostic.config({
  -- Disable the virtual text
  virtual_text = true,
  signs = {
    active = true
  },
  underline = true,
  update_in_insert = false,
  severity_sort = false,
  float = {
    focusable = false,
    style = "minimal",
    source = "always",
    header = "",
    prefix = "",
  }
})
--Customize Icons for Lsp config diagnostic
--local signs = { Error = " ", Warn = "", Hint = "", Info = "" }
-- or 
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- LSP installer
lsp_installer.setup{}

nvim_lsp.pyright.setup {
	on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        typeCheckingMode = "off"
      }
    }
  }
}

nvim_lsp.clangd.setup{
	on_attach = on_attach,
  capabilities = capabilities
}

nvim_lsp.sumneko_lua.setup{
	on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostic = {
        globals = { "vim" },
      },
      workspace = {
        -- make the server aware of Neovim runtime files 
        library ={
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
      -- Do not send telemtry data containing a randomized but uniqure identifier
      telemtry = {
        enable = false,
      },
    }
  }
}

nvim_lsp.marksman.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "markdown" }
}
nvim_lsp.ltex.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"bib", "gitcommit", "markdown", "org", "plaintex", "rst", "rnoweb", "tex"}
}


nvim_lsp.vimls.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

nvim_lsp.jsonls.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

-- icons 
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    -- This sets the spacing and the prefix, obviously.
    virtual_text = {
      spacing = 4,
      prefix = ''
    }
  }
)

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover,{
  border = 'rounded',
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help,{
  border = 'rounded',
})
