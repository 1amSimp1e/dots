vim.cmd [[
try
  colorscheme github_dark_default
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
