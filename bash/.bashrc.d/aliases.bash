# some more ls aliases
alias ll='ls -alF'
alias la='ls -lha'
alias l='ls -CF'
alias lr="ls -1 --color"
alias ld="ls -ld .*"
alias go='gnome-open'
alias c='clear'
alias h='history'
alias shut='sudo poweroff'
alias update='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'

#text edito
alias vi='vim'
alias svi='sudo vim'
alias edit='vim'

#server login
alias moshinb='mosh bioplat'
alias moshinb2='mosh bioplat2'

# Add an "alert" alias for long running commands.  Use like so:
#       sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
