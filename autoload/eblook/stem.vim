scriptencoding cp932

function! eblook#stem#Stem(word)
  if a:word =~ '[^ -~]'
    return s:StemUsingRules(a:word, g:eblook#stem_ja#rules)
    " TODO: 漢字部分のみにしたものを追加する
  else
    if g:eblook_stemming == 2 && exists(':PorterStem')
      return eblook#stem_en_porter#Stem(a:word)
    else
      return s:StemUsingRules(a:word, g:eblook#stem_en#rules)
    endif
  endif
endfunction

" 語尾補正ルールを使った語尾補正を行う
function! s:StemUsingRules(word, rules)
  let stemmed = []
  for rule in a:rules
    if a:word =~ rule[0]
      call add(stemmed, substitute(a:word, rule[0], rule[1], ''))
    endif
  endfor
  return stemmed
endfunction
