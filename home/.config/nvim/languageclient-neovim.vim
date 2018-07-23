
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
" For debugging and fine tuning start with: 'python': ['pyls', '-vvv'],
" And check /tmp/LanguageServer.log for diagnostic messges like this:
" DEBUG - pyls.rpc_manager - Notify textDocument/publishDiagnostics
" {
"  'uri': u'file:///home/efergcz/CICD/log-testapp/test.py',
"  'diagnostics': [
"                  {
"                   'source': 'pycodestyle',
"                   'range': {
"                             'start': {'line': 60, 'character': 79},
"                             'end': {'line': 60, 'character': 88}
"                            },
"                   'code': 'E501',
"                   'message': 'E501 line too long (87 > 79 characters)',
"                   'severity': 2
"                  }
"                 ]
" }
" Add pycodestyle.cfg in the project's directory
" with the following content:
" [pycodestyle]
" ignore = E501
"
" __Go__
" just do: 'go get -u github.com/sourcegraph/go-langserver'
" and then the go-langserver should be under:
" ~/go/bin/go-langserver which has to be in your PATH
"
"__Java__
" Download
" http://download.eclipse.org/jdtls/snapshots/jdt-language-server-latest.tar.gz
"
" Copy config_linux and plugins, .jar to some short path
" optionally symlink with:
" 'ln -s org.eclipse.equinox.launcher_*.jar org.eclipse.equinox.launcher_.jar'
"
" Start nvim and wait until something like the following appears:
" 'Starting 20% Starting Java Language Server'
"
" Alternatively
" clone and build with: ./mvnw package
" https://github.com/eclipse/eclipse.jdt.ls#building-from-the-command-line
"
" Optionally 2nd check if runnable:
" https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
"  '/home/efergcz/bin/plugins/org.eclipse.equinox.launcher_1.5.100.v20180607-1243.jar',
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'python': ['pyls'],
    \ 'go': ['go-langserver', '-gocodecompletion'],
    \ 'java': [
    \          'java',
    \          '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    \          '-Dosgi.bundles.defaultStartLevel=4',
    \          '-Declipse.product=org.eclipse.jdt.ls.core.product',
    \          '-Dlog.level=ALL',
    \          '-noverify',
    \          '-Xmx1G',
    \          '-jar', '/home/efergcz/bin/plugins/org.eclipse.equinox.launcher_.jar',
    \          '-configuration', '/home/efergcz/config_linux',
    \          '-data'
    \         ]
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" Increase logging
let g:LanguageClient_loggingLevel = 'DEBUG'

" Maps K to hover, gd to goto definition, F2 to rename
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
