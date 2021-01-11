call plug#begin()
  "Neovim LSP
  Plug 'neovim/nvim-lspconfig'
  "FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  "Javascript
  Plug 'othree/yajs.vim'
  Plug 'HerringtonDarkholme/yats.vim'
  "Rails
  Plug 'tpope/vim-rails'
  "Git
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'
  Plug 'airblade/vim-gitgutter'
  " Polyglot
  Plug 'sheerun/vim-polyglot'
  "Coloring
  Plug 'mhartington/oceanic-next'
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

