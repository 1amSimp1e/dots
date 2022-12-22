local status_ok, mason = pcall(require, "mason")
local status_ok, masonLsp = pcall(require, "mason-lspconfig")

if not status_ok then
	return
end

local lspconfig = require("lspconfig")

local servers = { "jsonls", "sumneko_lua", "pyright", "html", "cssls", "cssmodules_ls", "tsserver", "grammarly" }

mason.setup()
masonLsp.setup({
	ensure_installed = servers,
})

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("s1mple.lsp.handlers").on_attach,
		capabilities = require("s1mple.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "s1mple.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end
