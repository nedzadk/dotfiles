set exrc
set pyxversion=3
filetype plugin indent on
call plug#begin()
  " CoC
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Nerdtree
  Plug 'preservim/nerdtree'

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'stsewd/fzf-checkout.vim'

  " Git
  Plug 'tpope/vim-fugitive'

  " TreeSitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

  " Lightline
  Plug 'itchyny/lightline.vim'
  Plug 'mengelbrecht/lightline-bufferline'

  " Colors
  Plug 'gruvbox-community/gruvbox'
  Plug 'joshdick/onedark.vim'

  " Firenvim
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

  " Stuff
  Plug 'dbeniamine/cheat.sh-vim'

  " More of tpope magic 
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-dotenv'
call plug#end()

let g:coc_global_extensions = [
  \ 'coc-json', 
  \ 'coc-tsserver', 
  \ 'coc-prettier', 
  \ 'coc-yaml', 
  \ 'coc-css', 
  \ 'coc-git'
  \ ]

command! -nargs=0 Prettier :CocCommand prettier.formatFile

autocmd FileType scss setl iskeyword+=@-@
syntax on
let $NVIM_TERM = 1

" Set commands
set tgc
set guicursor=
set guioptions=
set showtabline=2
set laststatus=2
set guifont=ProggyCleanTTSZ:h25

" Basic editor setup
set hidden
set showcmd
set hlsearch
set showmatch
set mat=1
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

" Theme setup
let g:gruvbox_italic = 1
let g:gruvbox_sign_column = 'bg0'
let g:palenight_terminal_italics=1
set background=dark
colorscheme gruvbox  " must come after gruvbox_italic

" Setup statusbars
let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
  \   'right':[
  \     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ],
  \   ],
  \ },
  \ 'tabline': {
  \   'left': [ ['buffers'] ],
  \ },
  \ 'component_expand': {
  \   'buffers': 'lightline#bufferline#buffers'
  \ },
  \ 'component_type': {
  \   'buffers': 'tabsel'
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead'
  \ },
  \ }

" |||||||||||   KEYBOARD MAPPINGS    |||||||||||||

nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap <C-\> :bw<CR>

nnoremap <C-g> :FzfGFiles<CR>
nnoremap <C-r> :FzfRg<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <leader>hj :HowIn javascript 
nnoremap <leader>ht :HowIn typescript 
nnoremap <leader>r :so $MYVIMRC<CR>

" CoC Config 
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" GitGutter
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Git Mappings
nmap <silent> gs :Gstatus<CR>
nmap <silent> gc :Gcommit<CR>
nmap <silent> gp :Git push<CR>
nmap <silent> gb :Gblame<CR>


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Buffer navigation
nmap <leader>H :bprev<CR>
nmap <leader>L :bnext<CR>

" Reset search highlight
nnoremap <CR> :noh<CR><CR>

" Lightline buffer navigation
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

source ~/.config/nvim/fzf_config.vim
source ~/.config/nvim/nerd_config.vim
source ~/.config/nvim/tree_sitter.vim
