# BASH 

`mtr` - traceroute and ping together
`ping` - ping the address
`traceroute` - how many machines between here and the server
`whois ip` 

*Tips on*

`time ls` - use time to time how long it took for the program to execute
as an aside there is two version of `time` `sh` and `bash` I'm using `sh` version and I remapped
`time` to `/usr/bin/time` in my `~/.bashrc`

`renice +10 $PID` - this will reassign priority for the cpu

for file you need 644 and for dir 755

`dpkg --get-selections | grep -v deinstalled` - list all the packages that are installed

*Information about you and your machine*

`$ lsb_release -a` checks your OS version
`$ id`
`$ uname`    prints system information
        `-a` print all information
        `-r` kernel release
`$ w` shows who is currently logged in and what are they upto
`$ date` 
`$ uptime` information on how long system has been running

*Server related*

`$ hddtemp /dev/sda` need to be root to use this command
`$sensors` external command 
`$ ssh kizza@192.168.0.4` cmd to connect to an externat server with username kizza
`$ powerstat`

*General*

`$ ldd` 
`ln -s` simbolic link
`grep -v '^$'` - removes white spaces between lines in a file
`tr` - is some what usefull command
`cat /proc/cpuinfo` provides info about your cpu
`cat /proc/meminfo` provides info about your memory

`$ printenv`
`$ aspell` this is a shell program to check spelling
`$ dict`
`$ powreoff`
`$ sudo fdisk` information about partition and hard drives attached

`$dpkg --get-selections | grep -c deinstall` this will display all packages that
                                             are installed on your system

`$ lpci | grep VGA`
`$ fglrxinfo` man radeon #manual for the ATI graphics card. 

*The `find` command syntax is:*

`$ find /where/to/look/up criteria action`
`$ find /dir/path/look/up criteria action`
`$ find /dir/path/look/up -name "dir-name-here"`
`$ find /dir/path/look/up -name "pattern"`
`$ find /dir/path/look/up -name "dir-name-here" -print`
`$ find /dir/path/look/up -name "dir-name-here"`
`$ find / -name "dir-name-here"`

*Advance History Recall*

1. Overview of BASH history

 - history -c - to clean yoru history

2. Basic History Recall

 - `!!` will run command again. what it actually does it replaces !! with string
 - `!n` where n is number from the history list

3. Parameter Recall   

 - `!*` 
 - `!:n` you can splice s atring and get a particular position 

4. Advance Recall 

 - `!?string` 
 - `!command` will run a command from a history list

 - `echo !32:$` - get last element from histroy 32 line

6. Basic Replacement

 - ^stringtoreplace^stringreplacewith

7. Advance replacement

 - `:s` also a single replace e.g `!26:s/stringtoreplace/stringtoreplacewith`
 - `:gs` - this is a global replace

 - `cd !:$:t` t - is a tail

 8. 

  - q - surrond with quotes `echo !cat:*:q` 
  - `!cat:p` - put the command to the end on the history

 - .bashrc HISTSIZE
           HISTCONTROL (string) Behavior of the history
              - ignoredups - Don't put the command in your history if its the same as the
                             previous command
              - ignorespace - Don't put the command if there is a leading space

            export EDITOR="vim"
            export HISTIGNORE="clear:history"
            export HISTCONTROL="ignoreredups"

*keyboard shortcuts*

Ctrl + A Go to the beginning of the line you are currently typing on
Ctrl + E  Go to the end of the line you are currently typing on
Ctrl + L  Clears the Screen, similar to the clear command
Ctrl + U  Clears the line before the cursor position. If you are at the end of the line, clears the
 entire line.
Ctrl + H  Same as backspace
Ctrl + R  Let’s you search through previously used commands
Ctrl + C  Kill whatever you are running
Ctrl + D  Exit the current shell
Ctrl + Z  Puts whatever you are running into a suspended background process. fg restores it.
Ctrl + W  Delete the word before the cursor
Ctrl + K  Clear the line after the cursor
Ctrl + T  Swap the last two characters before the cursor
Esc + T  Swap the last two words before the cursor
Alt + F  Move cursor forward one word on the current line
Alt + B  Move cursor backward one word on the current line
Tab  Auto-complete files and folder names
