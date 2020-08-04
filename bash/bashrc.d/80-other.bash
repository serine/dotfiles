# load additional things, server specific
extra_mods_path=/mnt/software/modules/extra
extra_mod=tmux/

if [[ -e ${extra_mods_path}/${extra_mod} ]]
then
  ml use $extra_mods_path
  ml tmux
fi

# need this library for tmux
export LD_LIBRARY_PATH=/opt/libevent/.libs:$LD_LIBRARY_PATH
# need for qrencode
export LD_LIBRARY_PATH=/opt/qrencode/lib:$LD_LIBRARY_PATH
