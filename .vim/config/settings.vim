set number
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <F8> :TagbarToggle<CR>
nnoremap <C-x><Right> :w <bar> :bn<CR>
nnoremap <C-x><Left> :w <bar> :bp<CR>
map <F7> :NERDTreeToggle<CR>
let g:ycm_key_list_stop_completion = ['<Tab>']
