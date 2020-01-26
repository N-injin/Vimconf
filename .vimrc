set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'raimondi/delimitmate'

call vundle#end()            " required
filetype plugin indent on  

set number
set relativenumber
set scrolloff=5
set cursorline

syntax on
set t_Co=256
colorscheme minimalist
highlight Pmenu ctermfg=111 ctermbg=237 guifg=#ffffff guibg=#000000

"Disable mouse
set mouse=""

set backupdir=/tmp
set directory=/tmp

set backspace=indent,eol,start

"4 space tabs for indentation
set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=0
set autoindent


"Auto reload files
set autoread

"Emacs-like buffer and split management
nnoremap <C-x><Right> :w <bar> :bn<CR>
nnoremap <C-x><Left> :w <bar> :bp<CR>

set ignorecase
set smartcase
set showmatch
set hlsearch

set wildmenu

"Tab for autocomplete and indenting at beggining of lines
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()

map <C-p> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline_theme='minimalist'

nmap <C-o> :TagbarToggle<CR>
