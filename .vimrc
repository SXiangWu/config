syntax enable
set scrolloff=5
" let &t_SI.="\e[5 q"
" let &t_SR.="\e[4 q"
" let &t_EI.="\e[1 q"
" set spell spelllang=en_us
" set background=dark

" 设置默认进行大小写不敏感查找
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase 
" colorscheme molokai 
"colorscheme solarized
"显示行号
set nu
"
""启动时隐去援助提示
set shortmess=atI

"语法高亮
syntax on
"
""使用vim的键盘模式
set nocompatible
"
""不需要备份
set nobackup

"没有保存或文件只读时弹出确认
set confirm
"
""鼠标可用
set mouse-=a

"tab缩进
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
"
""文件自动检测外部更改
set autoread

set encoding=utf-8


"c文件自动缩进
set cindent
"
""自动对齐
set autoindent

"智能缩进
set smartindent
"
""高亮查找匹配
set hlsearch

"背景色
" set background=dark
"
""显示匹配
set showmatch

"显示标尺，就是在右下角显示光标位置
" set ruler
"
""去除vi的一致性
set nocompatible

"允许折叠
set foldenable
""""""""""""""""""设置折叠"""""""""""""""""""""
"
""根据语法折叠
set fdm=syntax

"手动折叠
set fdm=manual

"设置键盘映射，通过空格设置折叠
"nnoremap <space> @=((foldclosed(line('.')<0)?'zc':'zo'))<CR>
"""""""""""""""""""""""""""""""""""""""""""""""
"不要闪烁
" set novisualbell
"
""启动显示状态行
" set laststatus=2

"浅色显示当前行
"autocmd InsertLeave * se nocul
"
""用浅色高亮当前行
"autocmd InsertEnter * se cul

"显示输入的命令
set showcmd


let mapleader = " "
" let NERDSpaceDelims=1           " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1       " 多行注释时样子更好看
let g:NERDDefaultAlign = 'left'  "将行注释符左对齐 

set fillchars=vert:/

set fillchars=stl:/

set fillchars=stlnc:/
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
call plug#end()
