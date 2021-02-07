set exrc
set pyxversion=3

call plug#begin()
  " LSP config
  Plug 'neovim/nvim-lspconfig'
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
  Plug 'junegunn/gv.vim'
  Plug 'airblade/vim-gitgutter'

  " Telescope requirements
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " Airline
  Plug 'itchyny/lightline.vim'

  " Colors
  Plug 'gruvbox-community/gruvbox'

  " Stuff
  Plug 'dbeniamine/cheat.sh-vim'
  Plug 'tmux-plugins/vim-tmux'
call plug#end()

syntax on

" Set commands
set tgc
set guicursor=
set guioptions=
let $NVIM_TERM = 1
set background=dark
if &runtimepath =~? 'plugged/gruvbox'
  let g:gruvbox_italic = 1
  let g:gruvbox_sign_column='bg0'
  colorscheme gruvbox  " must come after gruvbox_italic
  let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \  },
      \ }

  " match the fold column colors to the line number column
  " must come after colorscheme gruvbox
  highlight clear FoldColumn
  highlight! link FoldColumn LineNr
endif
set hidden
set showcmd
set hlsearch
set backspace=indent,eol,start
set autoindent
set nostartofline
set cmdheight=2
set number relativenumber
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

inoremap jj <esc> :w <CR>

nnoremap <SPACE> <Nop>
let mapleader=" "

" Navigate buffers
nnoremap <C-\> :bw<CR>

nnoremap <C-p> :GFiles<CR>
nnoremap <leader>hj :HowIn javascript 
nnoremap <leader>ht :HowIn typescript 
nnoremap <leader>r :so $MYVIMRC<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>

nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gc <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <leader>gb <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent>[d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent>]d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <leader>f <cmd>lua vim.lsp.buf.formatting()<CR>


" Reset search highlight
nnoremap <CR> :noh<CR><CR>

let loaded_matchparen = 1

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
require'lspconfig'.vimls.setup{}
require'lspconfig'.yamlls.setup{}
require'lspconfig'.solargraph.setup{}
EOF 
