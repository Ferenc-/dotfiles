" VUNDLE settings
filetype off                  " required!

set rtp+=~/.nvim/Vundle.vim
call vundle#begin('~/.nvim/Vundle.vim')


" let Vundle manage Vundle required! 
Plugin 'VundleVim/Vundle.vim'

Plugin 'Syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rhysd/vim-clang-format'
Plugin 'majutsushi/tagbar'
"Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'derekwyatt/vim-scala'
Plugin 'shiracamus/vim-syntax-x86-objdump-d'
Plugin 'vim-scripts/AnsiEsc.vim'
Plugin 'rking/ag.vim'
Plugin 'zirrostig/vim-schlepp'
Plugin 'octol/vim-cpp-enhanced-highlight'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
