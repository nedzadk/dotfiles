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

  " Nerdtree
  Plug 'preservim/nerdtree'

  " Neovim Tree shitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'stsewd/fzf-checkout.vim'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  " Telescope requirements
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Colors
  Plug 'gruvbox-community/gruvbox'

  " Stuff
  Plug 'dbeniamine/cheat.sh-vim'
call plug#end()

syntax on

" Set commands
set tgc
set guicursor=
set background=dark
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
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set colorcolumn=80
set clipboard+=unnamedplus
set cursorline

set nobackup
set noswapfile

set scrolloff=8

inoremap jj <esc>

nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <C-p> :GFiles<CR>
nnoremap <leader>hj :HowIn javascript 
nnoremap <leader>ht :HowIn typescript 
nnoremap <leader>r :so $MYVIMRC<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

let loaded_matchparen = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#lsp#handler_enabled = 1

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'
command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
nmap <leader>nf :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"  Enable treesitter 
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

" LSP configs
lua << EOF
require'lspconfig'.tsserver.setup{}
require'lspconfig'.solargraph.setup{}
EOF
