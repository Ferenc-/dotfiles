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
Bundle 'majutsushi/tagbar'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'

" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!

" VUNDLE settings
