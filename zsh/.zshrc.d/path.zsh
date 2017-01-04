if [[ -f /mnt/software/apps/lmod/lmod/init/zsh ]]
then
  . /mnt/software/apps/lmod/lmod/init/zsh
fi

if [[ -f "$HOME/software/modules" ]]
then
  module use "$HOME/software/modules"
fi
