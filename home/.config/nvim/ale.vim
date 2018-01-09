" For putting the linter findings int the quickfix window (:copen)
" instead of the location window (:lopen)
"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1

" Keep the list open until there are no more errors (warnings are OK)
let g:ale_open_list = 1

" Use The statusline (airline) to notify about findings!
let g:airline#extensions#ale#enabled = 1

" Jump between linter findings with ^k and ^j
" but make sure that those findings are from ALE
" and not from LSClient or something else:
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"But the more general quickfix window based solution:
"map <C-j> :cn<CR>
"map <C-k> :cp<CR>
"Works for everything which uses the quickfix windows
"Furthermore you can jump with :cc 3 for the 3 item.
