scriptencoding utf-8
source ~/.config/nvim/plugins.vim
let mapleader=" "
let g:mapleader=" "

" Coloscheme
syntax enable " Enable syntax highlight
set t_Co=256

set tgc " Set term gui colors (24 bit mode)

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set background=dark
let g:onedark_terminal_italics=1
colorscheme onedark
let g:airline_theme='onedark'

"NerdTree config
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen=1

"TypeScript support
au BufNewFile,BufRead *.js setlocal filetype=javascript
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead *.jsx setlocal filetype=typescript.tsx

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

"File encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

"FZF config
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
"let g:gruvbox_contrast_dark = 'hard'

"Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1

if executable('rg')
    let g:rg_derive_root='true'
endif

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

"Line number configurations
set number
set cmdheight=2

"***************** KEY MAPPINGS ****************
"highlight ColorColumn ctermbg=0 guibg=grey
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

"Vim Fugitive
nmap <leader>gs :G<CR>

nnoremap <C-L> :bnext<CR>
nnoremap <C-H> :bprev<CR>

"Coc Snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>gr <Plug>(coc-deferences)
" nmap <leader>f <Plug>(coc-format-selected)
vmap <leader>f <Plug>(coc-format-selected)
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

"Fzf and file searching
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <leader>ps :Rg<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

"Reload/Edit vim config
nnoremap <leader><CR> :source $MYVIMRC<CR>
nnoremap <leader>ed :e $MYVIMRC<CR>

"Close buffer
nnoremap <leader>q :bdelete<CR>

"Close vim
nnoremap <leader><C-Q> :q!<CR>

"NerdTree keymaps
map <leader>nn :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<cr>

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

