let g:ycm_confirm_extra_conf = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_filetype_whitelist = { 'c': 1, 'cpp': 1, 'python': 1 }
let g:ycm_allow_changing_updatetime = 0

nnoremap <leader>q :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>w :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>e :YcmCompleter GoToDefinition<CR>
