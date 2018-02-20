" Use deoplete.
let g:deoplete#enable_at_startup = 1

" I want to close the preview window after completion is done.
autocmd CompleteDone * silent! pclose!
