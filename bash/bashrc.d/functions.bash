
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

export -f do-screen
