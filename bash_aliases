# ls customizations
alias ls='ls --color=auto' # always turn on coloring
alias ll='ls -la' # long listing

# list files sorted by size, display size in human readable form
# I prefer this over 'ls -laSh'.
alias lss='du -sh * | sort  --human-numeric-sort'

# grep customizations
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias gh='history | grep'

# cd customizations
alias ..='cd ..'
alias ...='cd ...'

# others
alias df='df -H'
alias du='du -ch'

# Command shortcuts
alias h='history'
alias vi='vim'
alias cpv='rsync --human-readable --progress'
alias scr='screen -r' # resume screen session
alias scrd='screen -rD' # resume screen session which is already attached.
alias less='less -R' # enable raw char handling for ANSI colors
