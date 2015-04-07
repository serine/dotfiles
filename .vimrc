"-------------------------------
" My VimRc
" (>^.^<)
" 
filetype plugin indent on
syntax on

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

set background=dark
syntax enable
colorscheme molokai

autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding: iso-8859-15 -*-\<nl>\"|$
autocmd BufWinLeave * mkview
autocmd BufWinEnter * silent loadview

no <up> <Nop>
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i

imap <C-j> <Esc>:exec "normal f" . leavechar<CR>a

set number                                                                " show line numbers
set t_Co=256
set cursorline    " highlight current line 
set wildmenu      " visual autocomplete for command menu
set showmatch     " highlight matching [{()}]
set incsearch     " search as characters are entered
set foldenable    " enable folding

set wrap
"set textwidth=80
"set colorcolumn=80
set textwidth=120
set colorcolumn=120


set laststatus=2  " Always show statusline

