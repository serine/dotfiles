"------------------------------
"
"                                                                My VimRc
"                                                                (>^.^<)
"
"------------------------------ 

filetype plugin indent on
syntax on

"------------------------------

"I need to excape <bs> from inside quotes
"let mapleader = '\<bs>'

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap  jk <esc>

nnoremap <leader>" viW<esc>a"<esc>hBi"<esc>lel
nnoremap <leader>' viW<esc>a'<esc>hBi'<esc>lel
nnoremap <leader>` viW<esc>a`<esc>hBi`<esc>lel

set background=dark
"colorscheme molokai
colorscheme PaperColor-Dark
let bdsErrorAsKeyword = 1
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
" js tab setting
set tabstop=8
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab
"------------------------------

"------------------------------
" Unbinds keys
"------------------------------

" didn't find it useful..
"inoremap <esc> <nop>

no <up> <Nop>
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" nonrecursive mapping
" I had used this mapping before I learned that
" `;` repeats `f` command !
"nnoremap ; :

"------------------------------
" Auto completes brackets
"------------------------------

inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i

imap <leader>f <esc>:exec 'normal f' . leavechar<cr>a

"------------------------------
" Comfort settings
"------------------------------ 

"set encoding=utf-8
set number                                                                                                                              " set the numbers
set relativenumber                                                              " setting relative numbers
set t_Co=256                                                                    " enables colors support for teminal
set cursorline                                                                  " highlight current line 
set wildmenu                                                                    " visual autocomplete for command menu
set showmatch                                                                   " highlight matching [{()}]
set incsearch                                                                   " search as characters are entered
"set textwidth=120
"set colorcolumn=120

"----------------------------------------------------------------------
" Fixing Vim's Background color erase for 256-color tmux and GNU screen
"----------------------------------------------------------------------

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
