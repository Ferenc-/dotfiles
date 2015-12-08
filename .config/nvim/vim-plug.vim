call plug#begin('~/.config/nvim/plugged')

"[C++]
    Plug 'Syntastic'
    Plug 'Valloric/YouCompleteMe'
    Plug 'rhysd/vim-clang-format'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'martong/vim-compiledb-path'
    Plug 'shiracamus/vim-syntax-x86-objdump-d'
"[/C++]

"[Scala]
    Plug 'ensime/ensime-vim'
    Plug 'derekwyatt/vim-scala'
"[/Scala]

"[Git]
    Plug 'tpope/vim-fugitive'
"[/Git]

"[IDE]
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdtree'
    Plug 'rking/ag.vim'
"[/IDE]

"[Misc]
    "Plug 'bling/vim-airline'
    Plug 'vim-scripts/AnsiEsc.vim'
    Plug 'zirrostig/vim-schlepp'
"[/Misc]

" Add plugins to &runtimepath
call plug#end()
