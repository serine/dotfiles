# This is my cheatsheet for TMUX 

## General usage

`ctrl-b [` - goes into copy mode, from which you can scroll up

_I still use default tmux keys_

`ctrl-b` to enter command mode

 -`d` to dettach from tmux session
 -`w` list all windows in the current session
 -`c` create new window in the current session
 -`,` rename current window

## Windows manipulation and moving around

 -`n` where n is a window number, this will move you to that window
 
## Reloading tmux config

`ctrl-b :source-file ~/.tmux.conf` 
OR
`tmux source-file ~/.tmux.conf`
