filetype plugin indent on
scriptencoding utf-8
source ~/.config/nvim/plugins.vim
let mapleader=" "
let g:mapleader=" "

" Coloscheme
syntax on
set ruler
set t_Co=256
set termguicolors
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection = 0
colorscheme gruvbox
set background=dark

"TypeScript support
au BufNewFile,BufRead *.js setlocal filetype=javascript
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead *.jsx setlocal filetype=typescript.tsx

let loaded_matchparen = 1

"File encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

"FZF config
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

"Airline configuration
let g:airline#extensions#tabline#enabled = 1

"CoC config
nmap <silent>lf  <Plug>(coc-fix-current)
command! -nargs=0 Format :call CocAction('format')
command! -nargs=0 Prettier :CocCommand prettier.formatFile

if executable('rg')
    let g:rg_derive_root='true'
endif

set noshowcmd
set clipboard=unnamed
set guicursor=

" Indent config
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nowrap
set nocursorline
set noruler
set cmdheight=1
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
set updatetime=50
set shortmess+=c

"swp
set nobackup
set noswapfile
set fileformats=unix,dos,mac
set showcmd
set shell=/bin/zsh

"Line number configurations
set number
set relativenumber
set cmdheight=2
set colorcolumn=80

"***************** KEY MAPPINGS ****************
"highlight ColorColumn ctermbg=0 guibg=grey
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

"Vim TODO
nmap <leader>tu <Plug>BujoChecknormal
nmap <leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

"Vim Fugitive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
nnoremap <C-H> :bnext<CR>
nnoremap <C-L> :bprev<CR>

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>gr <Plug>(coc-deferences)
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

"Fzf and file searching
nnoremap <C-p> :GFiles<CR>
nnoremap <C-G> :Rg<SPACE>
nnoremap <C-B> :Buffers<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <leader>ps :Rg<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

"Reload/Edit vim config
nnoremap <leader><CR> :source $MYVIMRC<CR>
nnoremap <leader>ed :e $MYVIMRC<CR>
