
# Use vi keybindings 
bindkey -v
# set 0.1 second delay when pressing <Esc> key to get into vi mode
export KEYTIMEOUT=1
# terminal support for 256 color scheme
export TERM="xterm-256color"
# enable history search
bindkey '^R' history-incremental-search-backward

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

#--------------------------------------------------
# recap later
# Auto-completion formatting.
zstyle ':completion:*:descriptions' format "- %d -"
zstyle ':completion:*:corrections' format "- %d - (errors %e})"
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes
#--------------------------------------------------

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

if [[ -d $HOME/.zshrc.d ]] ; then
    for zsh in "$HOME"/.zshrc.d/*.zsh ; do
        if [[ -e $zsh ]] ; then
            source "$zsh"
        fi
    done
    #unset -v zsh
    unset zsh
fi

autoload colors
colors
PROMPT="%{${fg[green]}%}[%m]:%{$reset_color%}%2~%{$reset_color%}%# " 