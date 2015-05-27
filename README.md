# dotfiles

At the moment this dotfiles directory is simply a repository of dot files. I am thinking to come up with BASH
script that would automate coping all the dot files to the right place. However at the moment if you want the
dot files manually `cp` them to the `~/` directory. 

Each directory contains specific dot files together with some handy cheatsheets.

### Setting up bash per directory history 

- BASH per directory history follow [this link](https://gist.github.com/leipzig/1651133)
- Don't forget to `source ~/.bashrc_profile` 

### Setting up instant markdown for vim 

- need to have `nodejs` installed `sudo apt-get install nodejs` (on Ubuntu)
- also install `nmp` `sudo apt-get install nmp`
- follow [this link](https://github.com/suan/vim-instant-markdown) for the rest of instructions

### To source `.inputrc` file in

 - `bind -f ~/.inputrc` this will activate key bindings
