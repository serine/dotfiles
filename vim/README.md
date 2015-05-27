# Vim 

*what sould good IDE give you?*

 - Fast access to all files - e.g tabs or otherwise
 - Color scheme             -  
 - Syntax highlighting      - for all files that are used e.g javascript, python, html etc
 - Static code analysis     - e.g pep8 for python, need a wasy to check agains your code sepcs
 - Code completion         
 - Docs look up             - being able to look up functions paramers 
 - Debugging             

*First vimrc*

 - better start from scratch !
 - vimbits.com

`autocmd! BufWritePost .vimrc source %` - to reload a .vimrc everytime you save a fiel without a need to 
                                          open and close the file again
`:tab h` - will open help menu in a separate tab
`:help | only` - is similat to `:tab h` - open help in new window
`gx` - clicks on a link under the cursor

*Moving around*

`de` - Delet form the cursor to the end of the word
`ce` - Cut through to the end of the word
`ye` - Yank text from here to the end of the word

`^P` - Auto complete text while typing editing - previous match
`^N` - Auto complete text while typing editing - next match
`^X^L` - While editing completes to the same line
`^X^F` - Complete file names (I think this is like tab completion)
`ctrl^n` - Auto completes the word based on teh words that you have typed in previously

`==` - will correct indentation based on the previous line
`=%` - will fix indentation of the brackets
`%` - move between matching brakets

`:%TOhtml` - Crate html rendering form the current file
`:earlier 15m` - Will revert document how it was 15 minutes ago
`:w !sudo tee %` - will save a file if not a root

`:echo @%` - display the file name

`:Explore` - to open file explorer
`Ctrl-6` - to reutrn to file explorer
`-` to go up a direcotry

*Folding with Vim*

There are at least three different way to fold

Visual mode: enter the visual mode and select lines for folding following `zf` command
Using numbers: `zf` number of lines from the cursor `j` e.g `zf 3 j` will fold three lines from the
cursor
Using searched name: `zf /_name_ ` enter

`zo` - opens a fold
`zc` - closes a fold
`za` - expands at the cursor
`zd` - delets prvious fold
`zR` - expands all folds
`zM` - folds all folds

*Managing multiple files at once*

`:tabnew [file]` - Open a new tav with give file
`gt or :tab[ext]` - Next tab
`gT or :tabp[revious]` - Previous tab
`:tabm[ove] #` - Move current tab to position #
`:tabc` - close current tab
`:tabo` - close all other tabs except current

the vin folder located at /etc/vim

/ - search forward in the document
? - serched backward from the start (not recomemded)
`*` - Word under the cursor - forward (bounded)
`g*` - Word under the cursor - backward (unbounded)

u - undo stuff
Ctrl^R - redo stuff

I - will start typing at the first none white space character 

`:e (edit)` command and then pick a file
`:%s/oldtext/newtext` this will replace all oldtext to a newtext in the file

:syntax enable (:sy enable) #enables recognition of different language syntax
