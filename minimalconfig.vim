"Numbers
set number
set relativenumber
set scrolloff=5

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

"Adds an extra CR and places your cursor if you press CR while between 2 brackets
function! FunctionBrackets()
	let prev = getline('.')[col('.') - 2]
	let current = getline('.')[col('.') - 1]

	if current == '}' && prev == '{'
		return "\<CR>\<CR>\<Esc>\k\i\<tab>"
	else
		return "\<CR>"
	endif
endfunction
inoremap <expr> <CR> FunctionBrackets()

inoremap <s-tab> <c-n>

"Handy completion
inoremap { {}<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

"Stolen status bar from the internet
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

"Stolen toggle status function
let s:hidden_statusline=0
function! ToggleStatusLine()
    if s:hidden_statusline == 0
        let s:hidden_statusline=1
        set laststatus=2
    else
        let s:hidden_statusline=0
        set laststatus=0
    endif
endfunction
nnoremap st :call ToggleStatusLine() <cr>

"Hide status by default
set laststatus=0
