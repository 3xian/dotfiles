setl shiftwidth=4
setl dictionary-=~/.vim/dict/python.dict dictionary+=~/.vim/dict/python.dict
setl complete-=k complete+=k

function! AutoPair(open, close)
  let line = getline('.')
  if col('.') > strlen(line) || line[col('.') - 1] == ' '
    return a:open.a:close."\<ESC>i"
  else
    return a:open
  endif
endf

inoremap ( <c-r>=AutoPair('(', ')')<CR>
inoremap [ <c-r>=AutoPair('[', ']')<CR>
inoremap { <c-r>=AutoPair('{', '}')<CR>
inoremap ' ''<ESC>i
