## Advance history recall

- history -c - to clean yoru history
- `!!` will run command again. what it actually does it replaces !! with string
- `!n` where n is number from the history list
- `!\*` 
- `!:n` you can splice s atring and get a particular position 
- `!?string` 
- `!command` will run a command from a history list
- `echo !32:$` - get last element from histroy 32 line
- ^stringtoreplace^stringreplacewith
- `:s` also a single replace e.g `!26:s/stringtoreplace/stringtoreplacewith`
- `:gs` - this is a global replace
- `cd !:$:t` t - is a tail
- q - surrond with quotes `echo !cat:\*:q` 
- `!cat:p` - put the command to the end on the history

- .bashrc HISTSIZE
           HISTCONTROL (string) Behavior of the history
              - ignoredups - Don't put the command in your history if its the same as the
                             previous command
              - ignorespace - Don't put the command if there is a leading space

            export EDITOR="vim"
            export HISTIGNORE="clear:history"
            export HISTCONTROL="ignoreredups"


