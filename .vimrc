set linespace=3

set history=1000

set nocompatible

let g:NERDTreeWinPos="left"
let NERDTreeWinPos=1

"necessary on some Linux distros for pathogen to properly load bundles
filetype on
filetype off

"load pathogen managed plugins
call pathogen#infect()

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

colorscheme cyberpunk

set visualbell t_vb=
set lines=42
set columns=213

"setting tab to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set paste
set clipboard=unnamed
set clipboard=unnamedplus

" normal copy/paste
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
imap <C-v> <Esc>pi
imap <C-y> <Esc>ddi
map <C-z> <Esc>
imap <C-z> <Esc>ui
