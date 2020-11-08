call plug#begin()
  "Coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  "Javascript
  Plug 'pangloss/vim-javascript'
  "Git
  Plug 'tpope/vim-fugitive'
  " Polyglot
  Plug 'sheerun/vim-polyglot'
  "Coloring
  Plug 'rakr/vim-one'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'morhetz/gruvbox'
  "Nerdtree
  Plug 'preservim/nerdtree'
  "File icons
  Plug 'ryanoasis/vim-devicons'
  "Misc
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'mhinz/vim-startify'
  " Statusline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:coc_global_extensions = [
      \'coc-tsserver',
      \'coc-css',
      \'coc-html',
      \'coc-json',
      \'coc-prettier']

