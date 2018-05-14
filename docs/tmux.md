# Get started with TMUX

In the nutshell _tmux_ is a virtual terminal window that stays on the server. That means two things:

1. Even if your computer get set on fire you are not going to loose your tmux sessions
2. You can attach to your tmux sessions from different computers

## Content

- [First touch](#first-touch)
- [General usage](#general-usage)
- [Reloading tmux config](#reloading-tmux-config)

### First touch

- `tmux` this will open a new tmux session (create a virtual terminal)

In _tmux_ you can have both multiple __sessions__ and multiple __windows__ with each session. `tmux` command
will create new session with one window in it. Look at the bottom green panel -> `[0]` is your session number
following by `0:bash` your window name

- `tmux new -s firstTime`  this will create a new tmux session with a name _firstTime_. Now instead of `[0]`
you will see `[firstTime]` as your session name

- `tmux ls` to list your tmux sessions
- `tmux attach` will attach to you first tmux session (I think)
- `tmux attach -t firstTime` will specifically attach to a particular session 

_It is handy to have projects broken into tmux session with several windows in it, depending on your needs_

Once you are inside the tmux (inside tmux session) you can do alot of window and sessions manipulation and
whole lot more, firstly you need to get into "command mode"

- `ctrl-b` is to get into "command mode" 
- `ctrl-b d` for "detach" from the current session

_Remember to re-attach you would run `tmux attach -t yourSessionName` in your terminal_

### General usage

`ctrl-b` to enter "command mode"

- `d` to dettach from tmux session
- `w` list all windows in the current session
- `s` list all session
- `c` create new window in the current session
- `,` rename current window
- `&` to kill a current window
- `[` goes into copy mode, from which you can scroll up
- `n` where n is a window number, this will move you to that window
 
### Reloading tmux config

`ctrl-b :source-file ~/.tmux.conf` 
OR
`tmux source-file ~/.tmux.conf`
