# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Don't do anything if not running interactively
if [[ $- != *i* ]] ; then
    return
fi

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

HISTSIZE=1000
HISTFILESIZE=2000

export EDITOR="vim"
export HISTIGNORE="clear:history:ls:ls -alh:l"
export HISTCONTROL="ignoreboth"    # don't put duplicate lines or lines starting with space in the history
export HISTCONTROL="ignoredups"    # remove duplicates only if the are consecutive commands.
export HISTCONTROL="erasedups"     # eliminates duplicates across the whole history 
#export HISTCONTROL="ignorespace"       # don't put the command in your history if there is a leading space
                                                                        # best practice don't hide purposefully anything from history
export HISTTIMEFORMAT="%F %T "          # get a timestap in history
# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

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

# Load any supplementary scripts
if [[ -d $HOME/.bashrc.d ]] ; then
    for bashrc in "$HOME"/.bashrc.d/*.bash ; do
        if [[ -e $bashrc ]] ; then
            source "$bashrc"
        fi
    done
    unset -v bashrc
fi
