#! /bin/bash

# Remove all previous symlinks
rm -r ~/.vim ~/.vimrc\
      ~/.tmux.conf\
      ~/.bash_profile ~/.bashrc ~/.inputrc ~/.profile ~/.mycd

# Link up Vim files and directoris
ln -s ~/gitrepos/dotfiles/vim/.vim ~/.vim
ln -s ~/gitrepos/dotfiles/vim/.vimrc ~/.vimrc

# Link up tmux configuration file
ln -s ~/gitrepos/dotfiles/tmux/.tmux.conf ~/.tmux.conf

# Link up tmux configuration file
ln -s ~/gitrepos/dotfiles/bash/.bash_profile ~/.bash_profile
ln -s ~/gitrepos/dotfiles/bash/.bashrc ~/.bashrc
ln -s ~/gitrepos/dotfiles/bash/.inputrc ~/.inputrc
ln -s ~/gitrepos/dotfiles/bash/.profile ~/.profile
ln -s ~/gitrepos/dotfiles/bash/.mycd ~/.mycd

# Source all files in
source ~/.bashrc ~/.bash_profele ~/.inputrc ~/.profile
#sourcing tmux config file doesn't work..
#tmux source-file ~/.tmux.conf
