filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Start plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'dracula/vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'dylanaraps/wal'
"End plugins
call vundle#end()            " required
filetype plugin indent on    " required
set omnifunc=syntaxcomplete#Complete

"Insert new line without triggering insert mode
nnoremap o o<ESC>
nnoremap O O<ESC>
nnoremap <NL> i<CR><ESC>

"Build python with F9
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

"General
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set incsearch
set hlsearch
syntax enable

"Theme
colorscheme wal

"Supertab
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"Tabs shortcuts
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
