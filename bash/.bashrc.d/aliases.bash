#-------------------------
# Set your alieases here
#-------------------------

alias ll='ls -alF'
alias la='ls -lha'
alias l='ls -CF'
alias lr="ls -1 --color"
alias ld="ls -ld .*"
alias go='gnome-open'
alias c='clear'

#text edito
alias svi='sudo vim'

# Add an "alert" alias for long running commands.  Use like so:
#       sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
