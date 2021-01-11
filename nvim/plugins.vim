call plug#begin()
  " Neovim LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'tjdevries/nlua.nvim'
  Plug 'tjdevries/lsp_extensions.nvim'
  " Neovim Tree shitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'stsewd/fzf-checkout.vim'
  " Javascript
  Plug 'othree/yajs.vim'
  Plug 'HerringtonDarkholme/yats.vim'
  " Rails
  Plug 'tpope/vim-rails'
  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'
  Plug 'airblade/vim-gitgutter'
  " Polyglot
  Plug 'sheerun/vim-polyglot'
  " Coloring
  Plug 'mhartington/oceanic-next'
  Plug 'gruvbox-community/gruvbox'
  " File icons
  Plug 'ryanoasis/vim-devicons'
  " Filemanager
  Plug 'lambdalisue/fern.vim'
  " Misc
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'tpope/vim-commentary'
  Plug 'mhinz/vim-startify'
  " Statusline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

