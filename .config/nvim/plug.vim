" ____  _            __     ___
"|  _ \| |_   _  __ _\ \   / (_)_ __ ___
"| |_) | | | | |/ _` \ \ / /| | '_ ` _ \
"|  __/| | |_| | (_| |\ V / | | | | | | |
"|_|   |_|\__,_|\__, (_\_/  |_|_| |_| |_|
"               |___/

call plug#begin()
Plug 'ryanoasis/vim-devicons'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'frazrepo/vim-rainbow'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Syntax Highlight for programming languages 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'lewis6991/gitsigns.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'github/copilot.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'akinsho/toggleterm.nvim',
Plug 'norcalli/nvim-colorizer.lua',
Plug 'tpope/vim-commentary',
Plug 'sainnhe/sonokai'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim', 
call plug#end()
