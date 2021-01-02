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
  Plug 'airblade/vim-gitgutter'
  " Polyglot
  Plug 'sheerun/vim-polyglot'
  "Coloring
  Plug 'morhetz/gruvbox'
  Plug 'joshdick/onedark.vim'
  "Nerdtree
  Plug 'preservim/nerdtree'
  "File icons
  Plug 'ryanoasis/vim-devicons'
  "Misc
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  " Statusline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:coc_global_extensions = [
      \'coc-tsserver',
      \'coc-emmet',
      \'coc-pairs',
      \'coc-css',
      \'coc-html',
      \'coc-json',
      \'coc-prettier',
      \'coc-eslint']

