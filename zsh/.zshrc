#----------------------------------------------------------------------
# Author: @kizza_a
# zshrc is broken into parts corresponding to individual functionality
# which are located in zshrc.d directory
# e.g history.zsh is all to with history file handling
#----------------------------------------------------------------------
#
# Use vi keybindings 
bindkey -v
# set 0.1 second delay when pressing <Esc> key to get into vi mode
export KEYTIMEOUT=1
# terminal support for 256 color scheme
export TERM="xterm-256color"
# enable history search
bindkey '^R' history-incremental-search-backward
# go through modules in zshrc.d and source then in
if [[ -d $HOME/.zshrc.d ]] ; then
    for zsh in "$HOME"/.zshrc.d/*.zsh ; do
        if [[ -e $zsh ]] ; then
            source "$zsh"
        fi
    done
    #unset -v zsh
    unset zsh
fi
