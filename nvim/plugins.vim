call plug#begin()
  "Coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  "Git
  Plug 'tpope/vim-fugitive'
  " Polyglot
  Plug 'sheerun/vim-polyglot'
  "Coloring
  Plug 'rakr/vim-one'
  "Nerdtree
  Plug 'preservim/nerdtree'
  "File icons
  Plug 'ryanoasis/vim-devicons'
  "Misc
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'tpope/vim-commentary'
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

