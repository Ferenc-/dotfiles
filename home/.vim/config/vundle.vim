" VUNDLE settings
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let g:vundle_default_git_proto= "ssh"

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'
Plugin 'Syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rhysd/vim-clang-format'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'derekwyatt/vim-scala'
Plugin 'shiracamus/vim-syntax-x86-objdump-d'
Plugin 'vim-scripts/AnsiEsc.vim'
Plugin 'rking/ag.vim'
Plugin 'zirrostig/vim-schlepp'
Plugin 'octol/vim-cpp-enhanced-highlight'

" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!

" VUNDLE settings
