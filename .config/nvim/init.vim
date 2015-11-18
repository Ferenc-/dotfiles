let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"Use this command to reload nvimrc
command! ReloadVimRc :so ~/.config/nvim/init.vim
"Use this command to get rid of trailing whitespaces
command! RemoveTrailingWhitespaces :%s/\s\+$
"Use this command to make a hexdump from buffer content
command! AsciiToHex :%!xxd
"Use this command to make a reverse hexdump from buffer content
command! HexToAscii :%!xxd -r
"Add new syntax coloring to text with
":syntax keyword Constant ac


let g:python2_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

source ~/.config/nvim/vim-plug.vim
source ~/.config/nvim/syntastic.vim
source ~/.config/nvim/youcompletme.vim
source ~/.config/nvim/tagbar.vim
source ~/.config/nvim/nerdtree.vim
"source ~/.nvim/config/vim-airline.vim

syntax on
set number

"smartcase only goes with ignorecase together
set ignorecase
set smartcase
set incsearch
set hlsearch
"Use ':noh' to clear highlights

"set guifont=Monospace\ 10
set guifont=Source\ Code\ Pro\ for\ Powerline\ Semi-Bold\ 10
set winaltkeys=no
set noswapfile

set foldmethod=indent
set foldcolumn=5
set foldlevel=6
set foldopen=insert

"Use ':retab' to change all existing tab characters to the current tab settings
set tabstop=4
set shiftwidth=4
set expandtab

nnoremap d "_d
vnoremap d "_d
nnoremap dw "_dw
vnoremap dw "_dw
nnoremap dd "_dd
vnoremap dd "_dd

map <F3> :YcmCompleter GoToDefinition <CR>
map <F4> :tabedit ~/.config/nvim/init.vim <CR>
map <F9> :TagbarToggle<CR>:NERDTreeToggle<CR>
map <F10> :TagbarToggle<CR>
map <F11> :NERDTreeToggle<CR>

map <C-K> :ClangFormat<CR>
imap <C-K> <ESC>:ClangFormat<CR>i

map ,st :%!scalariform -f -q -p=/home/ferenc/.scalariform.properties --stdin --stdout<CR>

map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>
map <C-t> :tabnew<CR>
"Always open file under cursor on a new tab:
map gf <C-w>gF

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

vmap <unique> <up>    <Plug>SchleppUp
vmap <unique> <down>  <Plug>SchleppDown
vmap <unique> <left>  <Plug>SchleppLeft
vmap <unique> <right> <Plug>SchleppRight

"This maps <C-w><ESC> to exit terminal mode.
tnoremap <C-w><ESC> <C-\><C-n>

"colors reloaded
"colors calmar256-dark
colors vydark
"colors matrix
"colors hhteal
"colors defaultme

"hi clear CursorLine
hi CursorLineNR cterm=BOLD ctermfg=28
"ctermbg=234
"set cursorline

set shell=/bin/bash
" ~/.nvimrc ends here
