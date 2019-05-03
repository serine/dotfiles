#------------------------------------
# Caring about my commands history
#------------------------------------

# Maximum number of lines contained in the history file
export HISTFILESIZE=1000000000000
# Colon-separated list of patterms used to decide which commands lines should be saved
export HISTIGNORE="clear:c:h:history:ls"
# Number of commands to remember in the command history
export HISTSIZE=1000000000000
# "ignoreboth" is a shorthand for "ignoredupes" and "ignorespaces"
#HISTCONTROL="ignoreboth"
# best practice don't hide purposefully anything from history
# don't put the command in your history if there is a leading space
#HISTCONTROL="ignorespace"
# remove duplicates only if they are consecutive commands.
export HISTCONTROL="ignoredups"
# eliminates duplicates across the whole history
export HISTCONTROL="erasedups"
# get a timestap in history
export HISTTIMEFORMAT="%F %T "
# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# adjust commands that span multiple lines to fit one line in history file
shopt -s cmdhist
# record each line of history as it was issued
# the default behaviour is to save to history file on exit
export PROMPT_COMMAND="history -a"
