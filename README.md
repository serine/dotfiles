# dotfiles

Okay, so I managed to come up with BASH script `install` that one can simply run and get all of the
"dotfiles". 

**WARNING** 

This script deletes all current, files and directories listed below and replaces them with symbolik link
from git source to the user's home directory.

~~~{.output}
~/.vim
~/.vimrc
~/.bash_profile
~/.bashrc
~/.inputrc
~/.profile
~/.mycd
~/.tmux.conf
~~~

Actually right now script only deletes symbolik links and wont do anything if it find actual file or
directory. I hope in future to modify the script to look for relevant files and directories, back them up
and then remove them all irrespective if it is symlink or actual file/directory.


_By the way Each directory contains specific dot files together with some handy cheatsheets_

### References

My dotfiles set history per directory and I got the code for it from [here](https://gist.github.com/leipzig/1651133)

### Setting up instant markdown for vim 

- need to have `nodejs` installed `sudo apt-get install nodejs` (on Ubuntu)
- also install `nmp` `sudo apt-get install nmp`
- follow [this link](https://github.com/suan/vim-instant-markdown) for the rest of instructions
