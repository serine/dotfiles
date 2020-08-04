# Set your alieases here

alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -lha'
alias l='ls -1'
#more info here https://unix.stackexchange.com/questions/120077/the-ls-command-is-not-working-for-a-directory-with-a-huge-number-of-files
alias lshuge="ls --sort=none"
alias c='clear'
alias grep="grep --color=always"
alias zgrep="zgrep --color=always"
alias do-open="xdg-open"
alias ssh-with-pass="ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no"
alias ssh-copy-id-with-pass="ssh-copy-id -o PreferredAuthentications=password -o PubkeyAuthentication=no"
alias my-jira="jira-state-info t; jira-state-info j; jira-state-info w"
alias buku-tags="buku -p | grep \"#\" | sort | uniq -c | cut -f10- -d\" \" | sed 's/^\s*//' | grep \"^#\""
alias find='fd'
alias n='vim ~/notes/scratch-$(cat /dev/urandom | tr -dc "A-z0-9" | head -c 7).md'
alias j='jrnl'
alias time='/usr/bin/time \
--output=time-$(date "+%F").log \
--format="\n\
Elapsed (sec):\t%e\
\n\
Max RSS mem (Kb):\t%M\
\n\
Total mem (Kb):\t%t"'
