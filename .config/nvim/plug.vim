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
"Plug 'github/copilot.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'onsails/lspkind-nvim'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'f3fora/cmp-spell',
Plug 'hrsh7th/cmp-nvim-lua',
Plug 'hrsh7th/cmp-emoji',
Plug 'APZelos/blamer.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'akinsho/toggleterm.nvim',
Plug 'jose-elias-alvarez/null-ls.nvim',
Plug 'norcalli/nvim-colorizer.lua',
Plug 'lukas-reineke/cmp-under-comparator'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'sainnhe/sonokai'
Plug 'marko-cerovac/material.nvim'
Plug 'sainnhe/everforest'

Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim', 
call plug#end()
