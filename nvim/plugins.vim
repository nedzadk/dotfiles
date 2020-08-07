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
  Plug 'dracula/vim', { 'as': 'dracula' }
  "Nerdtree
  Plug 'preservim/nerdtree'
  "File icons
  Plug 'ryanoasis/vim-devicons'
  "Misc
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'vuciv/vim-bujo'
  Plug 'tpope/vim-commentary'
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

