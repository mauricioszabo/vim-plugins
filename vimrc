set modeline
augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
  " Python
  autocmd FileType python set ai sw=4 sts=4 et
augroup END

" VIM-RSpec:
nnoremap <c-a> :RunSpec<CR>

" nmap <silent> <Leader>p :NERDTreeToggle<CR>
" nmap <c-p> :NERDTreeToggle<CR>
"map to fuzzy finder text mate stylez
nnoremap <c-f> :FuzzyFinderTextMate<CR>
nnoremap <c-g> :ruby finder.rescan!<CR>

filetype plugin on

map <a-LEFT> :tabprevious<CR>
map <a-RIGHT> :tabnext<CR>
"map <a-s-RIGHT> :tabnext<CR>
nnoremap <c-s-Tab> :tabprevious<CR>
nnoremap <c-Tab> :tabnext<CR>
map <c-t> :tabnew<CR>
"map <c-w> :tabclose<CR>

" Movendo entre SPLIT Windows
" map <C-J> <C-W>j<C-W>_
" map <C-K> <C-W>k<C-W>_

set pt=<F10>

" Macro para deixar um SPEC como Pending:
" nmap <c-p> :NERDTreeToggle<CR>
nmap <C-p> o<tab>pending do<esc>%O  end<esc><C-v>%<home>I<tab><esc>^d2h%^d2h
"p      CHAR    0

"let @p="$o<tab>pending do<esc>%i<tab><enter>end"
