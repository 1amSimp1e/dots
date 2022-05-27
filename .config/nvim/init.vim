" ___       _ _         _
"|_ _|_ __ (_| |___   _(_)_ __ ___
" | || '_ \| | __\ \ / | | '_ ` _ \
" | || | | | | |_ \ V /| | | | | | |
"|___|_| |_|_|\__(_\_/ |_|_| |_| |_|

" Imports
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

runtime ./maps.vim

" Imports Lua plugins configurations
lua require('tuenhan')

"imports the plugins settings
  "Autopairs
source ~/.config/nvim/plug-config/autopairs.vim
  "Brakets_colorizer
source ~/.config/nvim/plug-config/brackets_colorizer.vim
  "Coc NVIM
source ~/.config/nvim/plug-config/coc_nvim.vim
  "Telescope
source ~/.config/nvim/plug-config/telescope.vim
  "MarkdownPreview 
source ~/.config/nvim/plug-config/markdown_preview.vim
  "Nvim Tree 
source ~/.config/nvim/plug-config/nvim_tree.vim
  "Tab Line
source ~/.config/nvim/plug-config/tab_line.vim
  "Prettier 
source ~/.config/nvim/plug-config/prettier.vim

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif
" ignorecase when searching

set conceallevel=0 " See `` in markdown files
set t_Co=256 "Supports 256 Colors
set hidden "require to keep multiple buffers open multiple buffers"
set cmdheight=2 "more space for display messages"
set pumheight=10 "Make pop up menu smaller"
set ignorecase
set backspace =start,eol,indent
set nocompatible
set nobackup 
set showcmd
set cmdheight =1
set expandtab
set number
set mouse=a 
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set encoding=utf-8
set scrolloff=10 
set autoindent 
set si
set nowrap "No Wrap lines
set title 
set nuw=1
set background=dark
set clipboard=unnamedplus "copy and paste between vim and everything else
set updatetime=300 "Faster completion
set timeoutlen=100 "By default is 1000 ms 
set noshowmode " Dont't need to see things like --INSERT-- more
set formatoptions=cro " stop new line continution of comments" 
set nowritebackup " Don't make backup files recommed by COC NVIM
set nobackup "Don't make backup files recommed by COC nvim 
set cursorline
au! BufWritePost $MYVIMRC source % 
"Auto source when writing to init.vim alternatively you can run run :source $MYVIMRC

"================ THEMES ================== "
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
  colorscheme NeoSolarized
endif
set exrc

" Sonokai
" if has ('termguicolors')
" 	set termguicolors
" endif
" let g:sonokai_style = 'atlantis' "andromeda , shusia , maia
" let g:sonokai_better_performance = 1
" colorscheme sonokai

