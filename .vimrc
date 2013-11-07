set shell=/bin/bash
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle '3xian/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'digitaltoad/vim-jade'
filetype plugin indent on
syntax enable
set et
set ffs=unix,dos,mac
set shiftwidth=2
set tabstop=2
set softtabstop=2
set textwidth=0
set wrap
set number
set fileencodings=utf-8,GBK,big5,gb2312,cp936,gb18030
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
set noek
set statusline=[%{strftime('%H:%M:%S',getftime(expand('%')))}]\ %F
set laststatus=2
set pastetoggle=<F2>
set showmode
set undodir=~/.vim/.undo
set undofile
set undolevels=1000
set undoreload=10000
set fdm=marker
map j gj
map k gk
map <C-j> 8j
map <C-k> 8k
nmap <leader>t :NERDTree<cr>
nmap <leader>w :w<cr>
nmap <leader>x :x<cr>
nmap <leader>q :q!<cr>
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
