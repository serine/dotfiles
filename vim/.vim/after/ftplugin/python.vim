" This is to enable python indentation

setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
"setlocal textwidth=80
setlocal colorcolumn=80

"" display indentation quides
"set list listchars=tab:|\ ,trail :-,extends:>>,precedes:<<,nbsp;:x

" display indentation guides
"setlocal list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
setlocal list listchars=tab:❘\ \,trail:·,extends:»,precedes:«,nbsp:×

" convert spaces to tabs when reading file
autocmd! BufReadPost * set noexpandtab | retab! 4

" convert tabs to spaces before writing file
autocmd! BufWritePre * set expandtab | retab! 4

" convert spaces to tabs after writing file (to show guides again)
autocmd! BufWritePost * set noexpandtab | retab! 4
