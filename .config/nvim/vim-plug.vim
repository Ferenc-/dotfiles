call plug#begin('~/.config/nvim/plugged')

    Plug 'Syntastic'
    Plug 'Valloric/YouCompleteMe'
    Plug 'rhysd/vim-clang-format'
    Plug 'majutsushi/tagbar'
    "Plug 'bling/vim-airline'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'derekwyatt/vim-scala'
    Plug 'shiracamus/vim-syntax-x86-objdump-d'
    Plug 'vim-scripts/AnsiEsc.vim'
    Plug 'rking/ag.vim'
    Plug 'zirrostig/vim-schlepp'
    Plug 'octol/vim-cpp-enhanced-highlight'

" Add plugins to &runtimepath
call plug#end()
