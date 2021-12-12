# vim: ft=bash

# Common settings
PS1="\W \$ "

# load the aliases
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

# load the aliases
if [ -e $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi

# any local system specific settings go in .bashrc.local
if [ -e $HOME/.bashrc.local ]; then
    source $HOME/.bashrc.local
fi

## Python related
export PYTHONSTARTUP=$HOME/.pythonrc.py
