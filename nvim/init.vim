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

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>gr <Plug>(coc-deferences)
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

nnoremap <C-p> :GFiles<CR>
nnoremap <C-G> :Rg<SPACE>
nnoremap <C-B> :Buffers<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <leader>ps :Rg<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
"Reload vim config
nnoremap <leader><CR> :source $MYVIMRC<CR>
"Edit vim config
nnoremap <leader>ed :e $MYVIMRC<CR>

if executable('rg')
    let g:rg_derive_root='true'
endif


set noshowcmd
set clipboard=unnamed
set guicursor=

" Tab and space config
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

"navigate through buffers
set hidden
nnoremap <C-H> :bnext<CR>
nnoremap <C-L> :bprev<CR>

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

set number
set relativenumber
set cmdheight=2
set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=grey
let loaded_matchparen = 1
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

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

