set background=light
set pt=<F10>
nnoremap <c-f> :FuzzyFinderTextMate<CR>
nnoremap <a-t> :NERDTree<CR>
noremap <c-q> :ruby finder.rescan!<CR> 


autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,perl,tex set shiftwidth=2

autocmd FileType c,cpp,java,javascript,python,xml,xhtml,html set shiftwidth=2

augroup filetypedetect
  au! BufNewFile,BufRead *.ch setf cheat
  au BufNewFile,BufRead *.liquid setf liquid
  au! BufRead,BufNewFile *.haml setfiletype haml
  autocmd BufNewFile,BufRead *.yml setf eruby
augroup END

set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
"set shiftwidth=2  " Tabs under smart indent
"set nocp incsearch
"set cinoptions=:0,p0,t0
"set cinwords=if,else,while,do,for,switch,case
"set formatoptions=tcqr
"set cindent
"set autoindent
set smarttab
set expandtab

map <a-left> :tabprevious<CR>
map <a-right> :tabnext<CR>
map <c-t> :tabnew<CR>

" set mouse=a

let g:browser = 'firefox -new-window '
"let g:browser = '/home/taq/firefox/firefox -new-tab '  
"let g:browser = 'xterm -bg black -fg white -e lynx'  

function OpenRubyDoc(keyword)
let url = 'http://www.rollyo.com/search.html?q='.a:keyword.'\&sid=10307'
exec '!'.g:browser.' '.url.' &'
endfunction

function OpenPHPDoc(keyword)
let url = 'http://www.php.net'
exec '!'.g:browser.' '.url.'/'.a:keyword
endfunction

noremap rd :call OpenRubyDoc(expand('<cword>'))<CR>
noremap pd :call OpenPHPDoc(expand('<cword>'))<CR>

