call plug#begin()
" ============== PLUGINS iNSTALLATION ==================== "
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'frazrepo/vim-rainbow'
Plug 'Rigellute/rigel'
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim', 
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary' "For commenting with gcc and gc 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Syntax Highlight for programming languages 
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'folke/lsp-colors.nvim'
"Unused Plugins enable if needed
"Enable if you use vim-airline and vim-airline-themes"
""Plug 'vim-airline/vim-airline'
""Plug 'vim-airline/vim-airline-themes'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" ----- Auto completion ------ #
   "nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
  " For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'onsails/lspkind.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
  
  "Coc Nvim:
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Github Copilot
Plug 'github/copilot.vim'

" ================== INITIALIZE PLUGIN SYSTEM  ==================== "
call plug#end()
autocmd!
syntax on
set number
set relativenumber
set mouse=a 
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set encoding=utf-8
set noswapfile
set scrolloff=10 
set autoindent 
set backspace=start,eol,indent
set nowrap "No Wrap lines
set si
"requires lua plugin config
lua require('tuenhan')

"Auto Close the bracket
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"=======================  VIM-SNIPPETS ==========================="
let g:UltiSnipsSnippetDirectories = ['~/.vim/snippets']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" --------------------- BRACKET COLORIZE ---------------------- " 
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
" -------------------- NVIM TREE CONFIG ----------------------- "
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>


" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue
set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

"Indent Line"
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" ================ TAB LINE CONFIGURATION ======================== "
function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T'

    " the label is made by MyTabLabel()
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '

    if i + 1 == tabpagenr()
      let s .= '%#TabLineSep#'
    elseif i + 2 == tabpagenr()
      let s .= '%#TabLineSep2#'
    else
      let s .= ''
    endif
  endfor

  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'

  " right-align the label to close the current tab page
  if tabpagenr('$') > 1
    let s .= '%=%#TabLine#%999X'
  endif

  return s
endfunction

function MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let name = bufname(buflist[winnr - 1])
  let label = fnamemodify(name, ':t')
  return len(label) == 0 ? '[No Name]' : label
endfunction

set tabline=%!MyTabLine()
set showtabline=2

nnoremap <leader>t :tabnew<CR>
nnoremap <leader><S-c> :tabclose<CR>
nnoremap <S-l>     :tabnext<CR>
nnoremap <S-h>     :tabprevious<CR>
" ================ TERMINAL CONFIG ======================== "
let g:terminal_cursor_style = 'bar'
nnoremap <S-t> :terminal<CR>
" ================ THEMES ================== "

" Neosolarized Dark themes:
" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

" ========== HIGHLIGHT THE CURRENT LINE ========== "
set cursorline

" gruvbox:
"colorscheme gruvbox
" Dracula:
"colorscheme dracula
" OneDark:
"colorscheme onedark

"--------------- PRETTIER ------------------- " 
let g:prettier#autoformat = 1
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" -------------------- NERD TREE CONFIG ----------------------- "
" map <C-n> :NERDTreeToggle<CR>
" " Devi_icons:
" set encoding=UTF-8
" " NerdTree_Git-Plugins:
" let g:NERDTreeGitStatusIndicatorMapCustom = {
"                 \ 'Modified'  :'✹',
"                 \ 'Staged'    :'✚',
"                 \ 'Untracked' :'✭',
"                 \ 'Renamed'   :'➜',
"                 \ 'Unmerged'  :'═',
"                 \ 'Deleted'   :'✖',
"                 \ 'Dirty'     :'✗',
"                 \ 'Ignored'   :'☒',
"                 \ 'Clean'     :'✔︎',
"                 \ 'Unknown'   :'?',
"                 \ }
" let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
" let g:NERDTreeIgnore = ['^node_modules$']

" -------------------- VIM AIRLINE  ----------------------- "
"let g:airline_powerline_fonts = 1
"" let g:airline_theme = 'solarized' 
"let g:airline#extensions#tabline#enabled = 1

""True Symbol
"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"endif
  
""" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = 'ln'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.dirty='⚡'
"let g:airline_symbols.colnr='col'"

"" Display the branch nameL:
"let g:airline#extensions#hunks#enabled=0
"let g:airline#extensions#hunks#coc_git = 1

" ================ COC NVIM ================ "
""coc config
"let g:coc_global_extensions = [
"  \ 'coc-snippets',
"  \ 'coc-pairs',
"  \ 'coc-tsserver',
"  \ 'coc-eslint', 
"  \ 'coc-prettier', 
"  \ 'coc-json', 
"  \ ]
"" from readme
"" if hidden is not set, TextEdit might fail.
"set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
"set updatetime=300

"" don't give |ins-completion-menu| messages.
"set shortmess+=c

"" always show signcolumns
""set signcolumn=yes

"" Use tab for trigger completion with characters ahead and navigate.
"" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()

"" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
"" Coc only does snippet and additional edit on confirm.
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"" Or use `complete_info` if your vim support it, like:
"" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

"" Use `[g` and `]g` to navigate diagnostics
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)

"" Remap keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

"" Use K to show documentation in preview window
"nnoremap <silent> K :call <SID>show_documentation()<CR>

"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  else
"    call CocAction('doHover')
"  endif
"endfunction

"" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')

"" Remap for rename current word
"nmap <F2> <Plug>(coc-rename)

"" Remap for format selected region
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

"augroup mygroup
"  autocmd!
"  " Setup formatexpr specified filetype(s).
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  " Update signature help on jump placeholder
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end

"" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

"" Remap for do codeAction of current line
"nmap <leader>ac  <Plug>(coc-codeaction)
"" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)

"" Create mappings for function text object, requires document symbols feature of languageserver.
"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)

"" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)

"" Use `:Format` to format current buffer
"command! -nargs=0 Format :call CocAction('format')

"" Use `:Fold` to fold current buffer
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)

"" use `:OR` for organize import of current buffer
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

"" Add status line support, for integration with other plugin, checkout `:h coc-status`
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"" Using CocList
"" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list
"nnoremap <silent> <space>p :<C-u>CocListResume <CR>
