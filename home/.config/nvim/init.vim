set termguicolors

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
"Use this command to sort the selected lines
command! SortSelectedLines :'<,'>sort /\ze\%V/

command! PrettyPrintJson :%!python -m json.tool
"command! PrettyfySelectedAsJson :<,'>!python -m json.tool

let g:python2_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

source ~/.config/nvim/vim-plug.vim

source ~/.config/nvim/ack.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/tagbar.vim
source ~/.config/nvim/vim-airline.vim
source ~/.config/nvim/deoplete.vim
source ~/.config/nvim/languageclient-neovim.vim
source ~/.config/nvim/ale.vim

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

map <F4> :tabedit ~/.config/nvim/init.vim <CR>
map <F9> :TagbarToggle<CR>:NERDTreeToggle<CR>
map <F10> :TagbarToggle<CR>
map <F11> :NERDTreeToggle<CR>

"map <C-K> :ClangFormat<CR>
"imap <C-K> <ESC>:ClangFormat<CR>i
"
"map ,st :%!scalariform -f -q -p=/home/ferenc/.scalariform.properties --stdin --stdout<CR>

map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>
map <C-t> :tabnew<CR>

" PUM (pop-up menu) item selection with tab and shift tab
inoremap <expr> <S-tab> pumvisible() ? '<C-p>' : '<S-tab>'
inoremap <expr> <tab> pumvisible() ? '<C-n>' : '<tab>'

" Override Enter for the popup menu, not to include a newline
" This should be working by default specially with deoplete but it doesn't.
"
" Even more annyoing is that a simple inoremap doesn't work either!
" When debugging :verbose imap shows that <CR> is set to <CR> form this file???
" complete madness...
"
" Anyhow workaround is 'delaying the actual definition until after the plugins have been initialized'
" found here: https://stackoverflow.com/a/26972189/2070694
autocmd VimEnter * inoremap <expr> <CR> pumvisible() ? '<C-y>' : '<CR>'

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
