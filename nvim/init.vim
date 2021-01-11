set exrc

call plug#begin()
" Neovim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

" Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-lsp'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

" Git
Plug 'tpope/vim-fugitive'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Colors
Plug 'gruvbox-community/gruvbox'
call plug#end()

syntax on

" Set commands
set tgc
set guicursor=
colorscheme gruvbox
set hidden
set showcmd
set hlsearch
set backspace=indent,eol,start
set autoindent
set nostartofline
set cmdheight=2
set number
set relativenumber
set notimeout ttimeout ttimeoutlen=200
set shiftwidth=2
set softtabstop=2
set expandtab
set colorcolumn=80

let mapleader=" "
let loaded_matchparen = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#lsp#handler_enabled = 1

" Enable treesitter 
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

" LSP configs
lua << EOF
require'lspconfig'.tsserver.setup{}
require'lspconfig'.solargraph.setup{}
EOF
