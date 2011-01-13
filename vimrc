set modeline
augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
  " Python

  set ai sw=4 sts=4 et

  autocmd FileType txt map G gq}
augroup END

" VIM-RSpec:
nnoremap <c-a> :RunSpec<CR>

inoremap <F2> <C-R>="mauricio " . strftime("%d/%m/%Y") . ": "<CR>

" nmap <silent> <Leader>p :NERDTreeToggle<CR>
" nmap <c-p> :NERDTreeToggle<CR>

" Command-T: Opções
" nnoremap <c-f> :CommandT<CR>
" nnoremap <c-g> :CommandTFlush<CR>

let g:CommandTCursorLeftMap='<LEFT>'
let g:CommandTCursorRightMap='<RIGHT>'
let g:CommandTSelectNextMap='<DOWN>'
let g:CommandTSelectPrevMap='<UP>'

let g:CommandTMatchWindowAtTop=1
let g:CommandTCancelMap='<ESC>'

filetype plugin on

map <a-LEFT> :tabprevious<CR>
map <a-RIGHT> :tabnext<CR>
"map <a-s-RIGHT> :tabnext<CR>
nnoremap <c-s-Tab> :tabprevious<CR>
nnoremap <c-Tab> :tabnext<CR>
map <c-t> :tabnew<CR>
"map <c-w> :tabclose<CR>

map ç :noh<CR>
" Movendo entre SPLIT Windows
" map <C-J> <C-W>j<C-W>_
" map <C-K> <C-W>k<C-W>_

set pt=<F10>

" Macro para deixar um SPEC como Pending:
" nmap <c-p> :NERDTreeToggle<CR>
nmap <C-p> o<tab>pending do<esc>%O  end<esc><C-v>%<home>I<tab><esc>^d2h%^d2h
"p      CHAR    0

"let @p="$o<tab>pending do<esc>%i<tab><enter>end"
set clipboard=unnamed

"map to fuzzy finder text mate stylez
"nnoremap <c-f> :FuzzyFinderTextMate<CR>
"nnoremap <c-g> :ruby finder.rescan!<CR>
let g:CommandTSelectPrevMap='<Esc>OA'
nnoremap <c-f> :CommandT<CR>
nnoremap <c-g> :CommandTFlush<CR>
