set shell=/bin/bash

" Config 'VundleVim/Vundle.vim'
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ervandew/supertab'
Plugin '3xian/snipmate.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'fatih/vim-go'
call vundle#end()
filetype plugin indent on

" Basic config
syntax enable
set ffs=unix,dos,mac
set et
set shiftwidth=2
set tabstop=2
set softtabstop=2
set textwidth=0
set wrap
set nu
set fileencodings=utf-8,GBK,big5,gb2312,cp936,gb18030
set encoding=utf-8
set hlsearch
set incsearch
set cindent
set noru
set smarttab
set lazyredraw
set backspace=indent,eol,start
set nobackup
set nowb
set noswapfile
set statusline=[%{strftime('%H:%M:%S',getftime(expand('%')))}]\ %F
set laststatus=2
set pastetoggle=<C-p>
set showmode
set fdm=marker
set cinoptions+=g2,h2
au FileType go autocmd BufWritePre <buffer> GoFmt
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Key maps
map j gj
map k gk
map <C-j> 8j
map <C-k> 8k
nmap <leader>t :NERDTree<cr>
nmap <leader>w :w<cr>
nmap <leader>x :x<cr>
nmap <leader>q :q!<cr>
inoremap <C-j> ()<ESC>i
inoremap <C-k> []<ESC>i
inoremap <C-n> {<CR>}<ESC>O
inoremap <C-d> ""<ESC>i
inoremap <C-f> ''<ESC>i
inoremap <C-l> <ESC>l%%a

" Config 'scrooloose/syntastic'
let g:syntastic_cpp_compiler_options = '-std=c++0x'
let g:syntastic_python_pylint_args="-d C0103,C0111,R0903,W0141"

" Config 'nathanaelkane/vim-indent-guides'
colorscheme default
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237
