# load additional things, server specific
extra_mods_path=/mnt/software/modules/extra
extra_mod=tmux/

if [[ -e ${extra_mods_path}/${extra_mod} ]]
then
  ml use $extra_mods_path
  ml tmux
fi
