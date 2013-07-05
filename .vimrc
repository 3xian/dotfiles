filetype plugin on
filetype indent on
syntax on

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

set statusline=%{strftime('%H:%M:%S',getftime(expand('%')))}\ %F
set laststatus=2

map <C-j> 5j
map <C-k> 5k
map j gj
map k gk

nmap <leader>t :NERDTree<cr>
nmap <leader>w :w<cr>
nmap <leader>x :x<cr>
nmap <leader>q :q<cr>
nmap <leader>p :set paste<cr>

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
au FileType python call LoadPythonDict()
au FileType cpp call LoadCppDict()
hi MatchParen cterm=bold ctermbg=none ctermfg=white

function LoadPythonDict()
	set dictionary-=~/.vim/dict/python.dict dictionary+=~/.vim/dict/python.dict
	set complete-=k complete+=k
endfunction

function LoadCppDict()
	set dictionary-=~/.vim/dict/cpp.dict dictionary+=~/.vim/dict/cpp.dict
	set complete-=k complete+=k
endfunction
