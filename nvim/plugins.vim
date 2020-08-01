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
  Plug 'gruvbox-community/gruvbox'
  "Misc
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'vuciv/vim-bujo'
  " Statusline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
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

