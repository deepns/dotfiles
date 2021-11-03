# Common settings

PS1="\W \$ "

## CLI related.
alias ls="ls --color=always"
alias less='less -R' # enable raw char handling for ANSI colors
alias scr='screen -r' # resume screen session
alias scrd='screen -rD' # resume screen session which is already attached.
alias egrep='egrep --color=always' # Turn on search term highlighting in grep results

## Python related
export PYTHONSTARTUP=$HOME/.pythonrc.py

# any local system specific settings go in .bashrc.local
if [[ -e ~/.bashrc.local ]]; then
    . ~/.bashrc.local
fi
