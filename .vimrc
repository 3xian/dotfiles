set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'digitaltoad/vim-jade'
filetype plugin indent on

syntax enable
set ffs=unix,dos,mac
set shiftwidth=4
set tabstop=4
set softtabstop=4
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
map <C-j> 5j
map <C-k> 5k
nmap <leader>t :NERDTree<cr>
nmap <leader>w :w<cr>
nmap <leader>x :x<cr>
nmap <leader>q :q!<cr>
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
source ~/.vim/plugin/neocomplcache-conf.vim
