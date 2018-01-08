
autocmd BufReadPost *.rs setlocal filetype=rust

" Required for operations modifying multiple buffers like rename.
set hidden

" ___Rust___
" Install racer and rls, set the RUST_SRC_PATH env var and then
" test: 'racer complete std::io::B' (should show some completions)
" rls:   http://rls.booyaa.wtf/
" racer: https://github.com/racer-rust/racer#configuration
"
" ___Python__
" just do: 'pip install python-language-server' this will install pyls
" pyls:  https://github.com/palantir/python-language-server
"
" __Go__
" just do: 'go get -u github.com/sourcegraph/go-langserver'
" and then the go-langserver should be under:
" ~/go/bin/go-langserver which has to be in your PATH
"
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'python': ['pyls'],
    \ 'go': ['go-langserver', '-gocodecompletion'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" Maps K to hover, gd to goto definition, F2 to rename
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
