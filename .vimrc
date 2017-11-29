set linespace=3

set history=1000

set nocompatible

set number

let g:NERDTreeWinPos="left"
let NERDTreeWinPos=1

set clipboard=unnamed
set clipboard=unnamedplus

set guifont=Monospace\ 14

set autoindent
"necessary on some Linux distros for pathogen to properly load bundles
filetype on
filetype off
"load pathogen managed plugins
call pathogen#infect()
call pathogen#helptags()
"turn on syntax highlighting
inoremap <C-A> <ESC>
syntax on
"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

set history=1000
set incsearch     " do incremental searching
set hlsearch      " highlight search
set laststatus=2  " Always display the status line
set noswapfile
set showmatch    " blink matching pairs {[(
set winwidth=87
set winheight=30

colorscheme cyberpunk

set visualbell t_vb=
set lines=42
set columns=213

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
"setting tab to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
    let col = col('.') - 1

    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

set autoread

" normal copy/paste
" vmap <C-c> y<Esc>i
" vmap <C-x> d<Esc>i
" imap <C-v> <Esc>pi
" imap <C-y> <Esc>ddi
" map <C-z> <Esc>
" imap <C-z> <Esc>ui

" let g:ackprg = 'ag --nogroup --nocolor --column'
if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif

nmap <silent> <RIGHT> :cnext<CR>
nmap <silent> <LEFT> :cprev<CR>

map <C-n> :NERDTreeToggle<CR>
filetype detect

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:vimrubocop_config = '/home/otavio/dotfiles/.rubocop.yml'

autocmd BufWritePre * :%s/\s\+$//e

" Show trailing whitepace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

if has("unix")
    function! FontSizePlus ()
      let l:gf_size_whole = matchstr(&guifont, '\( \)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole + 1
      let l:new_font_size = ' '.l:gf_size_whole
      let &guifont = substitute(&guifont, ' \d\+$', l:new_font_size, '')
    endfunction

    function! FontSizeMinus ()
      let l:gf_size_whole = matchstr(&guifont, '\( \)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole - 1
      let l:new_font_size = ' '.l:gf_size_whole
      let &guifont = substitute(&guifont, ' \d\+$', l:new_font_size, '')
    endfunction
else
    function! FontSizePlus ()
      let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole + 1
      let l:new_font_size = ':h'.l:gf_size_whole
      let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
    endfunction

    function! FontSizeMinus ()
      let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole - 1
      let l:new_font_size = ':h'.l:gf_size_whole
      let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
    endfunction
endif


if has("gui_running")
    nmap <S-F12> :call FontSizeMinus()<CR>
    nmap <F12> :call FontSizePlus()<CR>
endif
