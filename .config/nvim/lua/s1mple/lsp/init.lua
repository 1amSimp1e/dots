local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("s1mple.lsp.lspsaga")
require("s1mple.lsp.configs")
require("s1mple.lsp.handlers").setup()
require("s1mple.lsp.null-ls")
