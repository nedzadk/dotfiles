set exrc
set pyxversion=3

call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

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
  let g:airline_theme='gruvbox'

  colorscheme gruvbox  " must come after gruvbox_italic

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

" Airline setup
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1

" Navigate buffers
nnoremap K :BufferNext<CR>
nnoremap J :BufferPrevious<CR>
xnoremap K :BufferNext<CR>
xnoremap J :BufferPrevious<CR>
nnoremap <C-\> :bw<CR>

nnoremap <C-p> :GFiles<CR>
nnoremap <leader>hj :HowIn javascript 
nnoremap <leader>ht :HowIn typescript 
nnoremap <leader>r :so $MYVIMRC<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Reset search highlight
nnoremap <CR> :noh<CR><CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

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

