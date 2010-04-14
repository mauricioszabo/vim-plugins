" let g:screen_sessionname = ""
" let g:screen_windowname = ""
" 
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" function Send_to_Screen(text)
"   " echo system("screen -S " . g:screen_sessionname . " -p " . g:screen_windowname . " -X stuff '" . a:text . "'")
"   echo system("screen -S " . g:screen_sessionname . " -p " . g:screen_windowname . " -X stuff '" . substitute(a:text, "'", "'\\\\''", 'g') . "'")
" endfunction
" 
" function Screen_Vars()
" let g:screen_sessionname = ""
" let g:screen_windowname = ""
" 
" " automatically find the session name if there's only one
" if system("screen -ls | awk '/Attached/ {print $1}' | wc -l") == 1
"   let g:screen_sessionname = " -S " . system("screen -ls | awk '/Attached/ {printf \"%s\", $1}'")
" else
"   let g:screen_sessionname = " -S " . input("Screen session: ", g:screen_sessionname)
" endif
" 
" let g:screen_windowname = " -p " . input("Screen window: ", g:screen_windowname)
" endfunction
" 
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" vmap <C-c><C-c> "ry:call Send_to_Screen(@r)<CR>
" nmap <C-c><C-c> vip<C-c><C-c> 
" 
" nmap <C-c><C-c> v :call Screen_Vars()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function Send_to_Screen(text)
  if !exists("g:screen_sessionname") || !exists("g:screen_windowname")
    call Screen_Vars()
  end

  echo system("screen -S " . g:screen_sessionname . " -p " . g:screen_windowname . " -X stuff '" . substitute(a:text, "'", "'\\\\''", 'g') . "'")
endfunction

function Screen_Session_Names(A,L,P)
  return system("screen -ls | awk '/Attached/ {print $1}'")
endfunction

function Screen_Vars()
  if !exists("g:screen_sessionname") || !exists("g:screen_windowname")
    let g:screen_sessionname = ""
    let g:screen_windowname = "0"
  end

  if system("screen -ls | awk '/Attached/ {print $1}' | wc -l") == 1
    let g:screen_sessionname = system("screen -ls | awk '/Attached/ {printf \"%s\", $1}'")
  else
    let g:screen_sessionname = input("session name: ", "", "custom,Screen_Session_Names")
  endif

  let g:screen_windowname = input("window name: ", g:screen_windowname)
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

vmap <C-c><C-c> "ry :call Send_to_Screen(@r)<CR>
nmap <C-c><C-c> vip<C-c><C-c>

nmap <C-c>v :call Screen_Vars()<CR>
