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
Bundle 'scrooloose/syntastic'
Bundle 'yosssi/vim-gold'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'

filetype plugin indent on
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
inoremap <C-n> ""<ESC>i
inoremap <C-u> ''<ESC>i
inoremap <C-f> <ESC>l%%a

au FileType go autocmd BufWritePre <buffer> Fmt
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

hi MatchParen ctermfg=Cyan ctermbg=DarkGray

let g:syntastic_cpp_compiler_options = '-std=c++0x'
