# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Don't do anything if not running interactively
if [[ $- != *i* ]] ; then
    return
fi
# this is some what an alias
# now you can access content on those directories from anywhere
CDPATH=:$HOME/projects:$HOME/gitrepos

# set noclobber option, will prevent you from overwriting
# existing file with `>` redirect operator.
set -o noclobber
# Vi mode in BASH
set -o vi
# set global text editor as Vim
export EDITOR=vim
# Shorteing the prompt path
PROMPT_DIRTRIM=2

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
  fi
fi

source $HOME/bin/acd_func.sh

# Load any supplementary scripts
if [[ -d $HOME/.dotfiles/bash/.bashrc.d ]] ; then
    for bashrc in "$HOME"/.dotfiles/bash/.bashrc.d/*.bash ; do
        if [[ -e $bashrc ]] ; then
            source "$bashrc"
        fi
    done
    unset -v bashrc
fi
