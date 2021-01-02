call plug#begin()
  "Coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  "Javascript
  Plug 'pangloss/vim-javascript'
  Plug 'HerringtonDarkholme/yats.vim'
  "Git
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'
  Plug 'airblade/vim-gitgutter'
  " Polyglot
  Plug 'sheerun/vim-polyglot'
  "Coloring
  Plug 'morhetz/gruvbox'
  Plug 'joshdick/onedark.vim'
  Plug 'mhartington/oceanic-next'
  "Nerdtree
  Plug 'preservim/nerdtree'
  "File icons
  Plug 'ryanoasis/vim-devicons'
  "Misc
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'tpope/vim-commentary'
  Plug 'mhinz/vim-startify'
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
      \'coc-highlight',
      \'coc-snippets']

