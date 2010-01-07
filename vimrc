augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

nmap <silent> <Leader>p :NERDTreeToggle<CR>
"map to fuzzy finder text mate stylez
nnoremap <c-f> :FuzzyFinderTextMate<CR>

filetype plugin on

map <a-LEFT> :tabprevious<CR>
map <a-RIGHT> :tabnext<CR>
"map <a-s-RIGHT> :tabnext<CR>
nnoremap <c-s-Tab> :tabprevious<CR>
nnoremap <c-Tab> :tabnext<CR>
map <c-t> :tabnew<CR>
map <c-w> :tabclose<CR>

set pt=<F10>
