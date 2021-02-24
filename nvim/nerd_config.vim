nnoremap <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
nmap <leader>nf :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


