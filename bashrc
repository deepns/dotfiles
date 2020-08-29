# Common settings
PS1="\W \$ "

# Enable vi for command line editing
set -o vi

## CLI related.
alias ls="ls --color=always"
alias less='less -R' # enable raw char handling for ANSI colors
alias scr='screen -r' # resume screen session
alias scrd='screen -rD' # resume screen session which is already attached.
alias egrep='egrep --color=always' # Turn on search term highlighting in grep results
