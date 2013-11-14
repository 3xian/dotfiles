setl dictionary-=~/.vim/dict/cpp.dict dictionary+=~/.vim/dict/cpp.dict
setl complete-=k complete+=k

inoremap , , 
inoremap ( <c-r>=AutoCurves()<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { <c-r>=AutoPair('{', '}')<CR>
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ <c-r>=AutoPair('[', ']')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>

function! AutoCurves()
  let line = getline('.')
  if col('.') > strlen(line)
    return "();\<ESC>hi"
  elseif line[col('.') - 1] == ' '
    return "()\<ESC>i"
  else
    return "("
  endif
endf

function! AutoPair(open, close)
  let line = getline('.')
  if col('.') > strlen(line) || line[col('.') - 1] == ' '
    return a:open.a:close."\<ESC>i"
  else
    return a:open
  endif
endf

function! ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
    return "\<Right>"
  else
    return a:char
  endif
endf
