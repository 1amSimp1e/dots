let g:prettier#autoformat = 1
" prettier command for coc
"command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:prettier#autoformat_require_pragma = 0
nmap <Leader>py <Plug>(Prettier)
