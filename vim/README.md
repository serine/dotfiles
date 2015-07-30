# Vim's essentials 

_Vim is optimised for edditing text not inserting text_

- [The core of vim](#the-core-of-vim)
    - [Syntax of the language](#syntax-of-the-language)
    - [Verbs in vim](#verbs-in-vim)
    - [Nouns in vim - Motions](#nouns-in-vim-motions)
    - [Text objects](#text-objects)
    - [Parameterized text objects](#parameterized-text-object)
    - [Tips for mastering the language](#tips-for-mastering-the-language)
- [First vimrc](#first-vimrc)

## The core of vim

#### Syntax of the language

Verb+Noun e.g `d` for delete and `w` for word => delete (operation) word (noun) => `dw`

#### Verbs in Vim

- `d` delete
- `c` change (delete and activate insert mode)
- `>` indent
- `y` yank (copy)
- `p` put (paste)

#### Nouns in Vim - Motions

- `w` move forward one word, at the start of the word
- `b` move back one word
- `e` move forward one word, to the end of the word

#### Text objects

- `iw` "inner word" (works from anywhere in a word)
- `it` "inner tag" (the contents of an HTML tag)
- `i"` "inner quotes"
- `ip` "inner paragraph"
- `as` "a sentence"

#### Parameterized text objects

- `f,F` "find" the next work (big F goes backwards)
- `t,T` "find" the next work (big T goes backwards)
- `/` search
- `?` - searched backward from the start (not recommended)
- `*` - Word under the cursor - forward (bounded)
- `g*` - Word under the cursor - backward (unbounded)

#### Tips for mastering the language

The "dot" command

#### Visual mode is a smells

----------------------------------------------------------------------------------------------------

## First vimrc

- better start from scratch !
- vimbits.com

_use arrow keys to resize the windows_

- `noremap <up> <C-W>+` 
- `noremap <down> <C-W>-`
- `noremap <left> 3<C-W><`
- `noremap <right> 3<C-W>>`

- `nnoremap ; :`
- `nnoremap : ;`

- `autocmd! BufWritePost .vimrc source %` - to reload a .vimrc every time you save a file without a need to open and
close the file again
- `set relativenumber` great feature that makes working in vim easy

## Moving around

- `de` - Delete form the cursor to the end of the word
- `ce` - Cut through to the end of the word
- `ye` - Yank text from here to the end of the word
 
- `^P` - Auto complete text while typing editing - previous match
- `^N` - Auto complete text while typing editing - next match
- `^X^L` - While editing completes to the same line
- `^X^F` - Complete file names (I think this is like tab completion)
- `ctrl^n` - Auto completes the word based on teh words that you have typed in previously

## Folding with Vim

There are at least three different way to fold

Visual mode: enter the visual mode and select lines for folding following `zf` command
Using numbers: `zf` number of lines from the cursor `j` e.g `zf 3 j` will fold three lines from the cursor
Using searched name: `zf /_name_ ` enter

- `zo` - opens a fold
- `zc` - closes a fold
- `za` - expands at the cursor
- `zd` - deletes previous fold
- `zR` - expands all folds
- `zM` - folds all folds

### Managing multiple files at once

- `:tabnew [file]` - Open a new tab with give file
- `gt or :tab[ext]` - Next tab
- `gT or :tabp[revious]` - Previous tab
- `:tabm[ove] #` - Move current tab to position #
- `:tabc` - close current tab
- `:tabo` - close all other tabs except current
- `:Explore` - to open file explorer
- `Sex`

__vim folder located at /etc/vimI__

- `u` - undo stuff
- `Ctrl^R` - redo stuff

I - will start typing at the first none white space character 

### String substitution

- `:g/^$/d` deletes all the blank lines in a file
- `:e (edit)` command and then pick a file
- `:%s/oldtext/newtext` this will replace all old text to a new text in the file
- `:syntax enable` (:sy enable) enables recognition of different language syntax

### Miscellaneous


- `g_` move to thte last non-blank character of the current line
- `yt,` yank until comma
- `>>` indent
- `gd` jump to the local declarationn of the variable
- `gD` jump to the global declarationn of the variable
more in `:help pattern-overview`
- `:let @/ = ""` tot clear last search pattern
- `set spell` enables spell check
- `:tab h` - will open help menu in a separate tab
- `:help | only` - is similar to `:tab h` - open help in new window
- `gx` - clicks on a link under the cursor
- `ctrl^x ctrl^l` for path completion
- `==` - will correct indentation based on the previous line
- `=%` - will fix indentation of the brackets
- `%` - move between matching brakets
- `:%TOhtml` - Crate html rendering form the current file
- `:earlier 15m` - Will revert document how it was 15 minutes ago
- `:w !sudo tee %` - will save a file if not a root
- `:echo @%` - display the file name
- `Ctrl-6` - to return to file explorer
- `-` to go up a directory
- `:%s/\s\+$//` delete all trailing whitespace
- `:%s/^\s\+` delete all leading whitesapce
- `/\t` show all tabs
- `/\s\+$` show all trailling whitespace
- `set textwidth=80` and `gqG` run this when you are at the top of the files. This will wrap all text to 80
columnds

## What should good IDE give you?

 - Fast access to all files - e.g tabs or otherwise
 - Color scheme             -  
 - Syntax highlighting      - for all files that are used e.g javascript, python, html etc
 - Static code analysis     - e.g pep8 for python, need a wasy to check agains your code sepcs
 - Code completion         
 - Docs look up             - being able to look up functions paramers 
 - Debugging             

## Plugins

- surround.vim

## Resources

- [Mastering the Vim language](https://www.youtube.com/watch?v=6T5aCzbrd18&index=6&list=WL)
- [Vim+Tmux]
