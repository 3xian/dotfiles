set shell=/bin/bash
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'ervandew/supertab'
Bundle '3xian/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'digitaltoad/vim-jade'
Bundle 'jnwhiteh/vim-golang'
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
set pastetoggle=<C-p>
set showmode
set fdm=marker
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
inoremap <C-l> {<CR>}<ESC>O
inoremap <C-h> ''<ESC>i
inoremap <C-n> ""<ESC>i
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
hi MatchParen ctermfg=red ctermbg=black guifg=red guibg=black
