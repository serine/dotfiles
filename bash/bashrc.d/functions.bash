
do-screen() {
  if [[ -z "$@" ]]
  then
    echo "USAGE: do-screen <FILENAME>"
  else
    if [[ -f $1 ]]
    then
      echo "ERROR: $1 file exists"
    else
      echo "MSG: Writing to $1 file"
      gnome-screenshot -w -b --delay=2 --file=$1
    fi
  fi
}

mk-pass() {
  len=30
  if [[ ! -z $1 ]]
  then
    if [[ ${1} -gt ${len} ]]
    then
      len=$1
    fi
  fi
  cat /dev/urandom | tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~' | head -c ${len}; echo
}


show-time() {
  reset=$(tput sgr0)
  bold=$(tput bold)
  #green=$(tput setaf 154)
  c79=$(tput setaf 79)
  while sleep 1
  do
    tput sc
    tput cup 0 $(($(tput cols)-11));
    echo -e "${c79}$(date +%I:%M\ %P)${reset}"
    tput rc
  done
}

lib_size() {
  echo $(( $(zcat $1 | wc -l)/4 ))
}

export -f lib_size
export -f show-time
export -f do-screen
export -f mk-pass
export -f fq_lib_sizes
