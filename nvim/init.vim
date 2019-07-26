set termguicolors
set scrolloff=5
set ignorecase
set smartcase
set nu
colorscheme onedark
set nocompatible
set nobackup
set confirm
set mouse-=a

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
"
set autoread
set encoding=utf-8


set cindent
set autoindent
set smartindent
set hlsearch

set showmatch

set nocompatible

set foldenable
" 据语法折叠
set fdm=syntax
" 手动折叠
set fdm=manual

let mapleader = " "
let NERDSpaceDelims=1           " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1       " 多行注释时样子更好看
let g:NERDDefaultAlign = 'left'  "将行注释符左对齐

filetype off                  " required

call plug#begin('~/.config/nvim/plugged')
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter'
Plug 'joshdick/onedark.vim'
Plug 'jiangmiao/auto-pairs'

" UI related
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Better Visual Guide
Plug 'Yggdroot/indentLine'
" syntax check
Plug 'w0rp/ale'
" Autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
" Formater
Plug 'sbdchd/neoformat'

Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'

call plug#end()

" vim-autoformat
noremap <F3> :Neoformat<CR>
" NCM2
augroup NCM2
    autocmd!
    " enable ncm2 for all buffers
    autocmd BufEnter * call ncm2#enable_for_buffer()
    " :help Ncm2PopupOpen for more information
    set completeopt=noinsert,menuone,noselect
    " When the <Enter> key is pressed while the popup menu is visible, it only
    " hides the menu. Use this mapping to close the menu and also start a new line.
    inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
    " uncomment this block if you use vimtex for LaTex
    autocmd Filetype tex call ncm2#register_source({
              \ 'name': 'vimtex',
              \ 'priority': 8,
              \ 'scope': ['tex'],
              \ 'mark': 'tex',
              \ 'word_pattern': '\w+',
              \ 'complete_pattern': g:vimtex#re#ncm2,
              \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
              \ })
augroup END
 
" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}
" Airline
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'

filetype plugin on
filetype indent on
syntax enable
syntax on

" vim-tex
let g:tex_flavor  = 'latexmk'
" let g:tex_conceal = ''
" let g:vimtex_fold_manual = 1
" let g:vimtex_latexmk_continuous = 1
" let g:vimtex_compiler_progname = 'nvr'
" use SumatraPDF if you are on Windows
" let g:vimtex_view_method = 'evince'
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-xelatex',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
