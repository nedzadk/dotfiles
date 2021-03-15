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

  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

  " If you want to display icons, then use one of these plugins:
  Plug 'kyazdani42/nvim-web-devicons' " lua
  Plug 'ryanoasis/vim-devicons' " vimscript

  " Colors
  Plug 'sainnhe/gruvbox-material'
  Plug 'ryanoasis/vim-devicons'
  " Bufferline
  Plug 'akinsho/nvim-bufferline.lua'

  " Stuff
  Plug 'dbeniamine/cheat.sh-vim'

  " More of tpope magic 
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-dotenv'
call plug#end()

let g:coc_global_extensions = [
  \ 'coc-json', 
  \ 'coc-solargraph',
  \ 'coc-tsserver', 
  \ 'coc-prettier', 
  \ 'coc-yaml', 
  \ 'coc-css', 
  \ 'coc-git', 
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
let g:material_theme_style = "darker-community"
set background=dark
colorscheme gruvbox-material

" |||||||||||   KEYBOARD MAPPINGS    |||||||||||||

nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap <C-\> :bw<CR>
nnoremap <C-q> :bd!<CR>

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

"Buffer line config
" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>]b :BufferLineCyclePrev<CR>

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)<CR>
nmap <leader>f  <Plug>(coc-format-selected)<CR>

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Buffer navigation
nmap <C-h> :bprev<CR>
nmap <C-l> :bnext<CR>

" Reset search highlight
nnoremap <CR> :noh<CR><CR>

source ~/.config/nvim/fzf_config.vim
source ~/.config/nvim/nerd_config.vim
source ~/.config/nvim/tree_sitter.vim
source ~/.config/nvim/misc_lua_config.vim
source ~/.config/nvim/bufferline.vim
