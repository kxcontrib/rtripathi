 function! OmniQ(findstart, base)
      if a:findstart
        " locate the start of the word
        let line = getline('.')
        let start = col('.') - 1
        while start > 0 && line[start - 1] =~ '\a'
           let start -= 1
        endwhile
        return start
      else
        let res = []
        for m in sort(readfile('/home/rohit/.vim/tags/qtags.txt'))
           if m =~ '^' . a:base
		   let tags = split(m, '|')
		 call add(res, {'word': tags[0], 
		\ 'abbr': tags[0].' '.tags[1].' '.tags[2],
		\	'icase':0})
       endif
     endfor
     return res
   endif
 endfunction

" map <C-F12> :!q generatetags.q.<CR>
 map <C-F12> :echo "generating tags"<CR>
	" $QHOME/l64/q /home/rohit/.vim/tags/generatetags.q
