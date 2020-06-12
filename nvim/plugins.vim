call plug#begin()
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'easymotion/vim-easymotion'
  "FZF
  Plug 'junegunn/fzf', { 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
  "Git
  Plug 'tpope/vim-fugitive'
  "Coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Shougo/denite.nvim'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  " Coloring
  Plug 'sheerun/vim-polyglot'
  Plug 'joshdick/onedark.vim'
  Plug 'rakr/vim-one'
  " Statusline
  Plug 'itchyny/lightline.vim'
  Plug 'josa42/vim-lightline-coc'
  " Fancy Stuff
  Plug 'mhinz/vim-startify'
call plug#end()

let g:coc_global_extensions = [
      \'coc-tslint-plugin',
      \'coc-tsserver',
      \'coc-emmet',
      \'coc-css',
      \'coc-html',
      \'coc-json',
      \'coc-yank',
      \'coc-prettier',
      \'coc-git',
      \'coc-lists']

