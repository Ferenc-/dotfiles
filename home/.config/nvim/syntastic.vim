highlight SignColumn ctermbg=None
"let g:syntastic_error_symbol = 'E342226270'
"let g:syntastic_warning_symbol = 'W342226270'
"let g:syntastic_style_error_symbol = 'e342226270'
"let g:syntastic_style_warning_symbol = 'w342226270'
let g:syntastic_c_checkers=['ycm']
let g:syntastic_cpp_checkers=['ycm']
let g:syntastic_sh_checkers = ['sh', 'checkbashisms', 'shellcheck']
let g:syntastic_python_pylama_args = '-l pep8,pyflakes,pep257,mccabe,pylint'
let g:syntastic_python_checkers = ['python', 'pyflakes', 'pep8', 'pylama', 'py3kwarn']
let g:syntastic_java_checkers=[]
let g:syntastic_check_on_open = 0
let g:syntastic_enable_signs = 1
let g:syntastic_enable_balloons = 0
let g:syntastic_enable_highlighting = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
