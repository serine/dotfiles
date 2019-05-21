# set variable identifying the chroot you work in (used in the prompt below)
if [[ -z "${debian_chroot:-}" ]] && [[ -r /etc/debian_chroot ]]
then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
  xterm-256color) color_prompt=yes;;
esac

reset='\[\e[0m\]'
c198='\[\e[38;5;198m\]'
c154='\[\e[38;5;154m\]'
c49='\[\e[38;5;49m\]'

# set the right prompt
if [[ "$color_prompt" = yes ]]
then

  get_git=($(git --version))
  git_version=${get_git[2]//./}

  host_color=${c49}
  user_prompt="\$"

  #check if logged in as root with. sudo -s will read your own ~/.bashrc a.k.a this one
  if [[ $(id -u) -eq 0 ]]
  then
    host_color=${c198}
    user_prompt="#"
  fi

  if [[ $git_version -ge 19 ]]
  then
    PS1="${host_color}[\h]${reset}\w${c154}\$(__git_ps1)${reset}${user_prompt} "
  else
    PS1="${host_color}[\h]${reset}\w${c154}${reset}${user_prompt} "
  fi

else
  echo "WHAT!!!???"

#  if [[ `git --version` =~ "1.9" ]]
#  then
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w $(__git_ps1)\$ '
#  else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#  fi

fi

# clear the environment
#unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
# here is a link to rxvt page https://en.wikipedia.org/wiki/Rxvt
# I think it is safe to keep this block commented out and comment back in
# when needed
# the reason for keeping it commented out is because it breaks my prompt.
#case "$TERM" in
#  xterm*|rxvt*)
#    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\]$PS1"
#    ;;
#  *)
#    ;;
#esac
