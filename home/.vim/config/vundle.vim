" VUNDLE settings
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let g:vundle_default_git_proto= "ssh"

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rhysd/vim-clang-format'
Bundle 'majutsushi/tagbar'
Bundle 'vim-airline/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'derekwyatt/vim-scala'
Bundle 'shiracamus/vim-syntax-x86-objdump-d'
Bundle 'vim-scripts/AnsiEsc.vim'
Bundle 'rking/ag.vim'
Bundle 'zirrostig/vim-schlepp'
Bundle 'octol/vim-cpp-enhanced-highlight'

" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!

" VUNDLE settings
