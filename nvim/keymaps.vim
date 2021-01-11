
"***************** KEY MAPPINGS ****************
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

"Vim Fugitive
nmap <leader>gs :G<CR>

nnoremap <C-L> :bnext<CR>
nnoremap <C-H> :bprev<CR>

"Fzf and file searching
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <leader>ps :Rg<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

"Reload/Edit vim config
nnoremap <leader><CR> :source $MYVIMRC<CR>
nnoremap <leader>ed :e $MYVIMRC<CR>

"Close buffer
nnoremap <leader>q :bdelete<CR>

"Close vim
nnoremap <leader><C-Q> :q!<CR>

"NerdTree keymaps
map <leader>nn :Fern . -drawer<CR>
map <leader>nf :Fern . -reveal=% -drawer<cr>

