"Numbers
set number
set relativenumber

syntax on
set termguicolors
set mouse=""
"Scroll offset
set scrolloff=5

"backups and swap
"
set backupdir=/tmp
set directory=/tmp

"Backspace in insert
set backspace=indent,eol,start

set autoread

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <F8> :TagbarToggle<CR>
nnoremap <C-x><Right> :w <bar> :bn<CR>
nnoremap <C-x><Left> :w <bar> :bp<CR>
map <F7> :NERDTreeToggle<CR>
let g:ycm_key_list_stop_completion = ['<Tab>']
let g:UltiSnipsExpandTrigger="<C-k>"
set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=0
set diffopt+=vertical
