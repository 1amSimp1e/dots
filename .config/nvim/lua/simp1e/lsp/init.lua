local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("simp1e.lsp.mason")
require("simp1e.lsp.handlers").setup()
require("simp1e.lsp.null-ls")
