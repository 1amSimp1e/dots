vim.g.auto_save = 0

vim.cmd([[
:augroup ft_markdown
  au!
  au FileType markdown let b:auto_save = 1
:augroup END
]])

vim.g.auto_save_silent = 1
