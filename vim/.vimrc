"------------------------------
"
"        My VimRc
"        (>^.^<)
"
"------------------------------ 

filetype plugin indent on
syntax on

"------------------------------

set background=dark
colorscheme molokai

"------------------------------
" Set file type
"------------------------------

autocmd BufRead,BufNewFile *.md set filetype=markdown

autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding: iso-8859-15 -*-\<nl>\"|$

"------------------------------
" Enable to save manual folds
"------------------------------

autocmd BufWinLeave * if expand("%") != "" | mkview | endif
autocmd BufWinEnter * if expand("%") != "" | loadview | endif
"autocmd BufWinLeave * mkview
"autocmd BufWinEnter * silent loadview

"------------------------------
" Unbinds arrow keys
"------------------------------

no <up> <Nop>
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

nnoremap ; :

"------------------------------
" Auto completes brackets
"------------------------------

inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i

imap <C-j> <Esc>:exec "normal f" . leavechar<CR>a

"------------------------------
" Comfort settings
"------------------------------ 

"set encoding=utf-8
set number              " set the numbers
set t_Co=256            " enables colors support for teminal
set cursorline          " highlight current line 
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set wrap                " wraps test based on textwidth parameter
set textwidth=120
set colorcolumn=120

"----------------------------------------------------------------------
" Fixing Vim's Background color erase for 256-color tmux and GNU screen
"----------------------------------------------------------------------

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
