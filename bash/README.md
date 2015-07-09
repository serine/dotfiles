# BASH - asnwser to all your problems

## Content

- [Key ideas for mastering command line](#key-ideas-for-mastering-command-line)
- [First stroke](#first-stroke)
- [Your first commands](#your-first-commands)
- [Keyboard shortcuts](#keyboard-shortcuts)
- [Handy commands](#handy-commands)
- [Be informed](#be-informed)
- [BASH it](#bash-it)
- [Advance history recall](#advance-history-recall)
- [Miscellaneous](#miscellaneous)
- [BASH scripting](#bash-scripting)

 
### Key concepts to master command line

- Folder == Directory AND Directory == Folder
- **Tab completion** - press tab all the time 

  1. One tab tap auto completes
  2. Two tab taps displays ambigious options for auto completion

- **Arrow key Up** - always use arrow keys up/down to get previous commands
- Two types of command execution:

  1. Just the command
  2. Command plus the arguments plus the options (flags)

Some commands run by themselves, some commands run with arguments only, others can do either with and without arguments

- **Prompt** `$` - "a message or symbol on a screen to show that the system is waiting for input"
               This is your reference point ! Wverything happens at the promps 
- `man` - manual, it give help (all possible) option for a given command e.g `man ls`
          you can even `man man`

### First stroke 

Command-line interface (CLI) is super easy to use and understand. The central aspect of CLI is 
**read-evaluate-print loop** i.e:

1. type a command at the prompt
2. then press enter (return) key
3. computer will read the command and execute the command
4. print its output out to the screen

Every time you open a terminal window you always start in you home directory at the prompt

- `pwd` print working directory - to check where are you at e.g `$pwd` -> `/home/username`
- `ls` - list directory content
- `cd` - to get to different directory e.g `cd /` will get you at the very top of your file system, just `cd` will get
you back to the home directory. Obviously if you are in th home directory and execute `cd` it won\'t do anything

### Your first commands

- `cd` change directory
- `ls` list content of the directory
- `mkdir` create newe directory e.g `mkdir testDir`
- `mv` move files from one location to another. Also used to rename files e.g `mv test.txt testDir/` will move test.txt
file to testDir, whereas `mv test.txt renamed.txt` will rename test.txt to the renamed.txt and keep the file in the
same directory
- `cp` will copy a file, workds exactly like `mv` commads accept it makes a copy rather than moving actuall file

with both `mv` and `cp` command the syntax is cp/mv WHAT WHERE or if renaming cp/mv WHAT NEW-WHAT

- `rm` will delete the file.
- `cat` to get file content
- `clear` to clear working window
- `data` will give you the day and time	
- `cal` will display calendar for the current month. To get full year, specify the year e.g `cal 1901`

This is really all you need to know to get started with the BASH ing things

### Keyboard shortcuts

- `Ctrl + A` Go to the beginning of the line you are currently typing on
- `Ctrl + E`  Go to the end of the line you are currently typing on
- `Ctrl + L`  Clears the Screen, similar to the clear command
- `Ctrl + U`  Clears the line before the cursor position. If you are at the end of the line, clears the
 entire line.
- `Ctrl + H`  Same as backspace
- `Ctrl + R`  Let’s you search through previously used commands
- `Ctrl + C`  Kill whatever you are running
- `Ctrl + D`  Exit the current shell
- `Ctrl + Z`  Puts whatever you are running into a suspended background process. fg restores it.
- `Ctrl + W`  Delete the word before the cursor
- `Ctrl + K`  Clear the line after the cursor
- `Ctrl + T`  Swap the last two characters before the cursor
- `Esc + T`  Swap the last two words before the cursor
- `Alt + F`  Move cursor forward one word on the current line
- `Alt + B`  Move cursor backward one word on the current line

### Handy commands

- `history` - is command you want to run to get a list of all of your previous commands. This is very handy
- `ln -s` make a symbolic link i.e make file appear in you desired directory without actually moving it there

### Be informed

- `mtr` trace route and ping together
- `ping` ping the address
- `traceroute` how many machines between here and the server
- `whois ip` 
- `hddtemp /dev/sda` need to be root to use this command
- `sensors` external command 
- `powerstat`
- `sudo fdisk` information about partition and hard drives attached
- `dpkg --get-selections | grep -c deinstall` this will display all packages
- `dpkg --get-selections | grep -v deinstalled` list all the packages that are installed
- `lpci | grep VGA`
- `ldd` 
- `id`
- `w` shows who is currently logged in and what are they upto
- `uptime` information on how long system has been running
- `lsb_release -a` checks your OS version
- `uname` prints system information
- `uname -a` print all information
- `uname -r` kernel release
- `cat /proc/cpuinfo` provides info about your cpu
- `cat /proc/meminfo` provides info about your memory

### BASH it

- `tr` work a little like split in python e.g `tr ";" "\n"` will split on ; and display each split on new line,
`tr -d '"'` will  strip quotes away
- `basename` to strip away path from the file name e.g `for i in testFilesDir/*.txt; do echo $(basename $i); done`
will return just text files names. `for i in the testFileDir/*.txt; do echo $(basename $i .txt); done` will remove
file extension form the returned files
- `grep -v '^$'` removes white spaces between lines in a file
- `grep -w` match only whole words e.g `grep -w gene' will return only lines that have stand alone word gene
- `grep -w -v` -v returns everything but the matched string e.g `grep -w -v gene` will return lines that don't have
stand alone word gene
- `find /where/to/look/up criteria action`
- `find /dir/path/look/up criteria action`
- `find /dir/path/look/up -name "dir-name-here"`
- `find /dir/path/look/up -name "pattern"`
- `find /dir/path/look/up -name "dir-name-here" -print`
- `find /dir/path/look/up -name "dir-name-here"`
- `find / -name "dir-name-here"`
- `"${filename##*.}"` will get you just the files extension
- `"${theString/thePattern/replaceWith}"`

### Advance history recall

- history -c - to clean yoru history
- `!!` will run command again. what it actually does it replaces !! with string
- `!n` where n is number from the history list
- `!*` 
- `!:n` you can splice s atring and get a particular position 
- `!?string` 
- `!command` will run a command from a history list
- `echo !32:$` - get last element from histroy 32 line
- ^stringtoreplace^stringreplacewith
- `:s` also a single replace e.g `!26:s/stringtoreplace/stringtoreplacewith`
- `:gs` - this is a global replace
- `cd !:$:t` t - is a tail
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

### Miscellaneous

- `sudo powreoff`
- `time ls` - use time to time how long it took for the program to execute
as an aside there is two version of `time` `sh` and `bash` I'm using `sh` version and I remapped
- `time` to `/usr/bin/time` in my `~/.bashrc`
- `renice +10 $PID` - this will reassign priority for the cpu
- for file you need 644 and for dir 755

### bash scripting

`if [[ -f file ]]; then` check if true <br>
`if [[ ! -f file ]]; then` check if not true

- `-L` check if file exists and is a symbolic link
- `-f` check if file exists
- `-e` I think also check if file exists
- `-h` check if symbolic link exists
