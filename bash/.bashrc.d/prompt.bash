# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
        debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
        xterm-256color) color_prompt=yes;;
esac

#----------------------------------------------------------------------------------------------------
if [[ "$color_prompt" = yes ]]; then
    if [[ `git --version` =~ "1.9" ]]; then
        # PS1 Line to show current Git Branch in the Prompt
	PS1='${debian_chroot:+($debian_chroot)}\[\033[1;36m\][\h]\[\033[00m\]\w\[\033[1;32m\]$(__git_ps1)\[\033[00m\]\$ '
    else
        # Original PS1 Line
	PS1='${debian_chroot:+($debian_chroot)}\[\033[1;36m\][\h]\[\033[00m\]\w\[\033[1;32m\]\[\033[00m\]\$ '
    fi
else
    if [[ `git --version` =~ "1.9" ]]; then
        # PS1 Line to show current Git Branch in the Prompt
        PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w $(__git_ps1)\$ '
    else
        # Original PS1 Line
            PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    fi
fi
#----------------------------------------------------------------------------------------------------
#if [[ "$color_prompt" = yes ]]; then
#	PS1='${debian_chroot:+($debian_chroot)}\[\033[1;36m\][\h]\[\033[00m\]\w\[\033[1;32m\]$(__git_ps1)\[\033[00m\]\$ '
#else
#        PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
        ;;
*)
        ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
        test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
        alias ls='ls --color=auto'
        #alias dir='dir --color=auto'
        #alias vdir='vdir --color=auto'

        alias grep='grep --color=auto'
        alias fgrep='fgrep --color=auto'
        alias egrep='egrep --color=auto'
fi

