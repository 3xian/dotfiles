set shell=/bin/bash
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'ervandew/supertab'
Bundle '3xian/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'pangloss/vim-javascript'
Bundle 'davidhalter/jedi-vim'
Bundle 'fatih/vim-go'

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
au FileType go autocmd BufWritePre <buffer> GoFmt
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" general keymap
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

" config [scrooloose/syntastic]
let g:syntastic_mode_map = {'mode': 'passive'}
let g:syntastic_cpp_compiler_options = '-std=c++0x'
let g:syntastic_python_pylint_args="-d C0103,C0111,C1001,R0903,W0141,W0232"
nmap <leader>s :SyntasticCheck<cr>
