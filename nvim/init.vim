scriptencoding utf-8
let mapleader=" "
let g:mapleader=" "

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/lsp.vim
source ~/.config/nvim/sets.vim
source ~/.config/nvim/keymaps.vim
source ~/.config/nvim/plugins-confs.vim
source ~/.config/nvim/funcs.vim

"TypeScript support
au BufNewFile,BufRead *.js setlocal filetype=javascript
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead *.jsx setlocal filetype=typescript.tsx

