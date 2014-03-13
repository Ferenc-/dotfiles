

source ~/.vim/config/vundle.vim
source ~/.vim/config/syntastic.vim
source ~/.vim/config/youcompletme.vim
source ~/.vim/config/tagbar.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/vim-airline.vim

set number
set t_Co=256
"set guifont=Monospace\ 10
set guifont=Source\ Code\ Pro\ for\ Powerline\ Semi-Bold\ 10
set winaltkeys=no


set foldmethod=indent
set foldcolumn=5
set foldlevel=6
set foldopen=insert

"To change all the existing tab characters to match the current tab settings, use:
":retab
set tabstop=4
set shiftwidth=4
set expandtab


map <F3> :YcmCompleter GoToDefinition <CR>
map <F4> :tabedit ~/.vimrc <CR>
map <F9> :TagbarToggle<CR>:NERDTreeToggle<CR>
map <F10> :TagbarToggle<CR>
map <F11> :NERDTreeToggle<CR>

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
" ~/.vimrc ends here
