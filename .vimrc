"Use ':so ~/.vimrc' to reload

source ~/.vim/config/vundle.vim
source ~/.vim/config/syntastic.vim
source ~/.vim/config/youcompletme.vim
source ~/.vim/config/tagbar.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/vim-airline.vim

set number

"smartcase only goes with ignorecase together
set ignorecase
set smartcase
set incsearch
set hlsearch
"Use ':noh' to clear highlights

set t_Co=256
"set guifont=Monospace\ 10
set guifont=Source\ Code\ Pro\ for\ Powerline\ Semi-Bold\ 10
set winaltkeys=no


set foldmethod=indent
set foldcolumn=5
set foldlevel=6
set foldopen=insert

"Use ':retab' to change all existing tab characters to the current tab settings
set tabstop=4
set shiftwidth=4
set expandtab
"Use ':%s/\s\+$' To get rid of trailing whitespaces

nnoremap d "_d
vnoremap d "_d
nnoremap dw "_dw
vnoremap dw "_dw
nnoremap dd "_dd
vnoremap dd "_dd

map <F3> :YcmCompleter GoToDefinition <CR>
map <F4> :tabedit ~/.vimrc <CR>
map <F9> :TagbarToggle<CR>:NERDTreeToggle<CR>
map <F10> :TagbarToggle<CR>
map <F11> :NERDTreeToggle<CR>

map <C-K> :pyf /usr/share/clang/clang-format.py<CR>
imap <C-K> <ESC>:pyf /usr/share/clang/clang-format.py<CR>i

map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>
map <C-t> :tabnew<CR>


imap <C-d> <Del>
imap <C-h> <BS>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <Home>
imap <C-e> <End>
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-m> <Enter>
"map <C-d> <Del>
map <C-h> <BS>
map <C-b> <Left>
map <C-f> <Right>
map <C-a> <Home>
"map <C-e> <End>
map <C-p> <Up>
map <C-n> <Down>


colors calmar256-dark
hi clear CursorLine
hi CursorLineNR cterm=BOLD ctermfg=28 
"ctermbg=234 
set cursorline

" ~/.vimrc ends here
