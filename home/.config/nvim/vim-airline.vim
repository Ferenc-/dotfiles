
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='distinguished'
"let g:airline_theme='zenburn'
"let g:airline_theme='monochrome'

" Don't show empty sections
let g:airline_skip_empty_sections = 1

" Make tabline only show tabs, instead of buffers
" otherwise 'Closing a tab does not delete a buffer'
" https://github.com/bling/vim-airline/issues/220
let g:airline#extensions#tabline#show_buffers = 0
