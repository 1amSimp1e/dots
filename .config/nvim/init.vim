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
"source ~/.config/nvim/plug-config/coc_nvim.vim
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
  "Blammer
source ~/.config/nvim/plug-config/blammer.vim

syntax enable                " Enable the syntax hightlighting
set hidden                   "require to keep multiple buffers open multiple buffers"
set nowrap                   "No Wrap lines
set encoding=utf-8           "The encoding displayed
set pumheight=10             "Make pop up menu smaller"
set fileencoding=utf-8       "The encoding written to file 
set ruler                    "Show the cursors position all the time
set cmdheight=2              "more space for display messages"
set iskeyword+=-             "Treat dash separated words as a word text object
set mouse=a                  "Enable your mouse 
set t_co=256                 "Supports 256 colors 
set conceallevel=0           " See the `` markdown file
set tabstop=2                "Insert 2 spaces for tab 
set shiftwidth=2             "change the numder of spaces characters inserted for indentation
set smarttab                 "Makes tabbing smarter will realize you have 2 vs 4 "
set expandtab                "Convert tab to space
set smartindent              "Makes indent smarter
set autoindent               "Good auto indent 
set number                   "Enable the line numbers
set cursorline               "Enable hightlight current line 
set background=dark          "Tell vim what's the color of the background should look like
set showtabline=2            "Always display tab 
set noshowmode               "Don't see things like --INSERT-- anymore
set updatetime=300           "Faster completions 
set timeoutlen=100           "By default timeoutlen is 1000ms 
"set formatoptions-=cro       "Stoping newline continue of comments 
autocmd VimEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set clipboard=unnamedplus    "Copy and paste between vim and everything else 

au! BufWritePost $MYVIMRC source % 
"Auto source when writing to init.vim alternatively you can run run :source $MYVIMRC

"================ THEMES ================== "
" Neo Solarized themes:
if has ('termguicolors')
  let g:neosolarized_termtrans=1
  set termguicolors
endif
colorscheme NeoSolarized
highlight clear Pmenu
highlight Pmenu cterm=inverse
"highlight clear PmenuSel

" Neosolarized Dark themes options 1:
" true color
"if exists("&termguicolors") && exists("&winblend")
  "syntax enable
  "set termguicolors
  "set winblend=0
  "set wildoptions=pum
  "set pumblend=5
  "set background=dark
  "" Use NeoSolarized
  "let g:neosolarized_termtrans=1
  "colorscheme NeoSolarized
"endif
"set exrc
"let &t_ut=''
" highlight completion for cmp
"highlight clear Pmenu
"highlight Pmenu cterm=inverse
"highlight clear PmenuSel

"highlight! link CmpPmenu         Pmenu
"highlight! link CmpPmenuBorder   Pmenu
"highlight! link PmenuSel       Pmenu

"highlight! CmpPmenu         guibg=#7c8c8e 
"highlight! CmpItemAbbr          guifg=#152a2d
"highlight! CmpPmenuBorder   guibg=#7c8c8e
"highlight! PmenuSel         guibg=#93a1a1
"highlight! CmpPmenu         guifg=#1e393d

"highlight!      CmpItemKindModule        guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindClass         guibg=NONE guifg=#152a2d
"highlight! link CmpItemKindStruct        CmpItemKindClass
"highlight!      CmpItemKindVariable      guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindProperty      guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindFunction      guibg=NONE guifg=#152a2d
"highlight! link CmpItemKindConstructor   CmpItemKindFunction
"highlight! link CmpItemKindMethod        CmpItemKindFunction
"highlight!      CmpItemKindKeyword       guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindText          guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindUnit          guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindConstant      guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindSnippet       guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindColor         guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindFile          guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindReference     guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindFolder        guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindConstant      guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindTypeParameter guibg=NONE guifg=#152a2d
"highlight!      CmpItemKindOperator guibg=NONE guifg=#152a2d

highlight!      CmpItemKindModule        guibg=NONE guifg=#727a81
highlight!      CmpItemKindClass         guibg=NONE guifg=#727a81
highlight! link CmpItemKindStruct        CmpItemKindClass
highlight!      CmpItemKindVariable      guibg=NONE guifg=#727a81
highlight!      CmpItemKindProperty      guibg=NONE guifg=#727a81
highlight!      CmpItemKindFunction      guibg=NONE guifg=#727a81
highlight! link CmpItemKindConstructor   CmpItemKindFunction
highlight! link CmpItemKindMethod        CmpItemKindFunction
highlight!      CmpItemKindKeyword       guibg=NONE guifg=#727a81
highlight!      CmpItemKindText          guibg=NONE guifg=#727a81
highlight!      CmpItemKindUnit          guibg=NONE guifg=#727a81
highlight!      CmpItemKindConstant      guibg=NONE guifg=#727a81
highlight!      CmpItemKindSnippet       guibg=NONE guifg=#727a81
highlight!      CmpItemKindColor         guibg=NONE guifg=#727a81
highlight!      CmpItemKindFile          guibg=NONE guifg=#727a81
highlight!      CmpItemKindReference     guibg=NONE guifg=#727a81
highlight!      CmpItemKindFolder        guibg=NONE guifg=#727a81
highlight!      CmpItemKindConstant      guibg=NONE guifg=#727a81
highlight!      CmpItemKindTypeParameter guibg=NONE guifg=#727a81
highlight!      CmpItemKindOperator guibg=NONE guifg=#152a2d




" Sonokai
" if has ('termguicolors')
" 	set termguicolors
" endif
" let g:sonokai_style = 'atlantis' "andromeda , shusia , maia
" let g:sonokai_better_performance = 1
" colorscheme sonokai

"Gruv Box themes
" if has ('termguicolors')
"   set termguicolors
"   colorscheme gruvbox

" Dracula Themes:
" if has ('termguicolors')
"  set termguicolors
"  colorscheme dracula

" One Dark Themes: 
" if has ('termguicolors')
  " set termguicolors
  " colorscheme onedark

" Everforest Themes:

"if has('termguicolors')
  "set termguicolors
"endif

"" For dark version.
"set background=dark

"" For light version.
""set background=light

"" Set contrast.
"" This configuration option should be placed before `colorscheme everforest`.
"" Available values: 'hard', 'medium'(default), 'soft'
"let g:everforest_background = 'hard'

"" For better performance
"let g:everforest_better_performance = 1

"colorscheme everforest
