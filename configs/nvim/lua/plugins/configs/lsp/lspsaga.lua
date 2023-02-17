local status_ok, saga = pcall(require, "lspsaga")
if not status_ok then
  return
end

saga.setup({
	ui = {
		winblend = 10,
		border = "rounded",
		colors = require("catppuccin.groups.integrations.lsp_saga").custom_colors(),
		kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
	},
  -- Migrate to BBQ 
  symbol_in_winbar = {
    enable = false,
  },
})

local keymap = vim.keymap.set

-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")

-- Code action
keymap({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")

-- Rename
keymap("n", "<leader>gr", "<cmd>Lspsaga rename<CR>")

-- Go to Definition
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>")

-- Show cursor diagnostic
-- also like show_line_diagnostics  support pass ++unfocus
keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")

-- Show buffer diagnostic
keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")

-- Diagnostic jump can use `<c-o>` to jump back
keymap("n", "<C-j>", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap("n", "<C-k>", "<cmd>Lspsaga diagnostic_jump_next<CR>")

keymap("i", "<C-l>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
keymap("n", "gp", "<Cmd>Lspsaga peek_definition<CR>")
