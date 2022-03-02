call plug#begin()
"Plugins Install
Plug 'tpope/vim-sensible'
"NerdTree
Plug 'preservim/nerdtree'
"    Extra Plugins
Plug 'Xuyuanp/nerdtree-git-plugin'
"NerdTree-Gits config:
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
map <C-n> :NERDTreeToggle<CR>
"nerdtree icons:
Plug 'ryanoasis/vim-devicons'
set encoding=UTF-8
" Loaded when clojure file is opened
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Multiple file types
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

" On-demand loading on both conditions
Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
autocmd! User goyo.vim echom 'Goyo is now loaded!'

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
" Vim Pathogen: 
execute pathogen#infect()
execute pathogen#infect()
filetype plugin indent on
"Vim Rain bow (Brackets) 
Plug 'frazrepo/vim-rainbow'
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
"Vim-AirLine 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Rigellute/rigel'
let g:rigel_airline = 1
"let g:airline_theme = 'wombat' 
"let g:airline_theme='rigel'
"let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1
"Vim Last Place
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
"Themes
"Nord Vim
Plug 'arcticicestudio/nord-vim'
"Gruvbox Themes
Plug 'morhetz/gruvbox'
" dracula 
Plug 'dracula/vim', { 'as': 'dracula' }
" Oceanic next Themes:
Plug 'mhartington/oceanic-next'
"Ayu Themes:
Plug 'ayu-theme/ayu-vim'


"Coc nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Initialize plugin system
" Coc Config
Plug 'sainnhe/everforest'

call plug#end()
set relativenumber

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab
" Gruvbox themes:
"colorscheme gruvbox 
"set background=dark
syntax on
"Ayu colorscheme:
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
"OceanicNext Theme
 "syntax enable
" for vim 7
 "set t_Co=256

" for vim 8
 "if (has("termguicolors"))
  "set termguicolors
 "endif

"colorscheme OceanicNext
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1

"Solarized themes:
"colorscheme solarized 
"nord Themes:
"let g:nord_italic = 1
"let g:nord_underline = 1
"colorscheme nord

"Vim-commentary config:

"coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

