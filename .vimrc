filetype plugin on
filetype indent on

set shiftwidth=4
set tabstop=4
set softtabstop=4

set textwidth=100
set wrap
set number
set fileencodings=utf-8,GBK,big5,gb2312,cp936,gb18030
set hlsearch
set incsearch
set nocompatible
set cindent
set noru
set smarttab
set lazyredraw

set nobackup
set nowb
set noswapfile

map <C-j> 3j
map <C-k> 3k
map j gj
map k gk

nmap <leader>w :w<cr>
nmap <leader>x :x<cr>
nmap <leader>q :q<cr>

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
