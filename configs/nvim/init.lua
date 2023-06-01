vim.defer_fn(function()
  pcall(require, "impatient")
end, 0)

-- For options & keymappings & coloring
require("core")

-- Install the Lazy Plugins Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--single-branch",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end

vim.opt.runtimepath:prepend(lazypath)

-- Where you can intall and modify your plugins 
require("plugins")

-- Highlighting
require("core.hi")
