# set variable identifying the chroot you work in (used in the prompt below)
if [[ -z "${debian_chroot:-}" ]] && [[ -r /etc/debian_chroot ]]
then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
  xterm-256color) color_prompt=yes;;
esac

reset=$(tput sgr0)
bold=$(tput bold)
red=$(tput setaf 1)
green=$(tput setaf 154)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magentabg=$(tput setab 5)
cyan=$(tput setaf 49)

# set the right prompt
if [[ "$color_prompt" = yes ]]
then

  getGitVersion=`git --version`
  versionArray=($getGitVersion)
  gitVersion=${versionArray[2]//./}

  if [[ $gitVersion -ge 19 ]]
  then
    PS1='${cyan}[\h]${reset}\w${green}$(__git_ps1)${reset}\$ '
  else
    PS1='${cyan}[\h]${reset}\w${green}${reset}\$ '
  fi

else

  if [[ `git --version` =~ "1.9" ]]
  then
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w $(__git_ps1)\$ '
  else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
  fi

fi

# clear the environment
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
  xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\]$PS1"
    ;;
  *)
    ;;
esac
