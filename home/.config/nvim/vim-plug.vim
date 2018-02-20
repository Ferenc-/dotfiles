call plug#begin('~/.config/nvim/plugged')

"[LanguageServer]
    Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
"[/LanguageServer]

"[C++]
    Plug 'rhysd/vim-clang-format'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'martong/vim-compiledb-path'
    Plug 'shiracamus/vim-syntax-x86-objdump-d'
"[/C++]

"[Java]
    Plug 'artur-shaik/vim-javacomplete2'
"[/Java]

"[Scala]
    Plug 'ensime/ensime-vim'
    Plug 'derekwyatt/vim-scala'
"[/Scala]

"[Docker]
    Plug 'ekalinin/Dockerfile.vim'
"[/Docker]

"[YAML-RAML]
    Plug 'stephpy/vim-yaml'
"[/YAML-RAML]

"[Robot-framework]
    Plug 'mfukar/robotframework-vim'
"[/Robot-framework]

"[Git]
    Plug 'tpope/vim-fugitive'
"[/Git]

"[IDE]
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdtree'
    Plug 'mileszs/ack.vim'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'w0rp/ale'
"[/IDE]

"[Misc]
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-scripts/AnsiEsc.vim'
    Plug 'zirrostig/vim-schlepp'
"[/Misc]

" Add plugins to &runtimepath
call plug#end()
