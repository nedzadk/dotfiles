set background=dark
colorscheme OceanicNext

let g:airline_theme='oceanicnext'
" Coloscheme
syntax enable " Enable syntax highlight
set t_Co=256

set tgc " Set term gui colors (24 bit mode)

"File encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

set noshowcmd
set clipboard=unnamed
set guicursor=

" Indent config
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nowrap
set nocursorline
set noruler
set smartindent
set shortmess+=c

"Hide nonactive buffer
set hidden

"Search config
set hlsearch
set incsearch
set ignorecase
set smartcase
set nohlsearch

"Misc config
set noerrorbells
set scrolloff=8
set noshowmode
set updatetime=300
set shortmess+=c

"swp
set nobackup
set noswapfile
set fileformats=unix,dos,mac
set showcmd
set shell=/bin/zsh

"More natural way of opening splits
set splitbelow
set splitright

"Line number configurations
set number
set cmdheight=2
