filetype plugin indent on
scriptencoding utf-8
source ~/.config/nvim/plugins.vim

" Coloscheme
syntax on
set ruler
set t_Co=256
colorscheme one
set background=dark
set termguicolors
let g:palenight_terminal_italics=1

"TypeScript support
au BufNewFile,BufRead *.js setlocal filetype=javascript
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead *.jsx setlocal filetype=typescript.tsx

"File encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

"FZF config
if has('nvim') && !exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif

"Airline configuration
let g:airline#extensions#tabline#enabled = 1

"CoC config
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent>lf  <Plug>(coc-fix-current)
command! -nargs=0 Format :call CocAction('format')
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <leader> rr <Plug>(coc-rename)
nmap <silent> gr <Plug>(coc-deferences)
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

nnoremap <C-p> :GFiles<CR>
nnoremap <C-G> :Rg<CR>
nnoremap <C-B> :Buffers<CR>


let g:mapleader=','
set noshowcmd
set clipboard=unnamed

" Tab and space config
set expandtab
set softtabstop=2
set shiftwidth=2
set nowrap
set nocursorline
set noruler
set cmdheight=1

set shortmess+=c

"navigate through buffers
set hidden
nnoremap <C-H> :bnext<CR>
nnoremap <C-L> :bprev<CR>
nnoremap <C-D><C-D> :bd!<CR>


"Search config
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <CR> :noh<CR><CR>

"swp
set nobackup
set noswapfile
set fileformats=unix,dos,mac
set showcmd
set shell=/bin/zsh

"NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <Leader>f :NERDTreeToggle<Enter>
nmap <silent><Leader>v :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1

set number
