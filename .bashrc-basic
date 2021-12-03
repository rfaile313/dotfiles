# Basic .bashrc

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# You know why I'm here
export EDITOR="vim"
export VISUAL='vim'

# I am forgetful :]
HISTSIZE=20000
HISTFILESIZE=5000000
# Append, don't overwrite 
shopt -s histappend
# ignorespace and ignoredups https://www.geeksforgeeks.org/histcontrol-command-in-linux-with-examples/
HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Bash Color prompt
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
LIME_YELLOW=$(tput setaf 190)
YELLOW=$(tput setaf 3)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
PS1="\[${RED}\]\u\[${WHITE}\]@\[${CYAN}\]\H\[${WHITE}\]:\[${MAGENTA}\]\W\[${WHITE}\]\\$"

# If we have a .bash_aliases file... use it
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
