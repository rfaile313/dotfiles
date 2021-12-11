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

# @rfaile313 Term color prompt assignments
# See: https://github.com/rfaile313/dotfiles for generation
# ---------------------------------------------------------
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
BLOOD_RED=$(tput setaf 124)
GREEN=$(tput setaf 2)
NEON_GREEN=$(tput setaf 82)
DARK_BLUE=$(tput setaf 4)
CYAN=$(tput setaf 6)
YELLOW=$(tput setaf 3)
PEE_YELLOW=$(tput setaf 11)
LIME_YELLOW=$(tput setaf 190)
WHITE=$(tput setaf 7)
BASIC_MAGENTA=$(tput setaf 5)
DARK_MAGENTA=$(tput setaf 13)
MAGENTA=$(tput setaf 165)
BRIGHT_MAGENTA=$(tput setaf 201)
DARK_PURPLE=$(tput setaf 99)
ORANGE=$(tput setaf 208)
MID_GRAY=$(tput setaf 245)
PASTEL_PEACH=$(tput setaf 225)
PASTEL_BLUE=$(tput setaf 117)
BOLD=$(tput bold)
NORMAL=$(tput sgr0)
# ---------------------------------------------------------
# Basic PS1 - change colors as desired
export PS1="\[${RED}\]\u\[${WHITE}\]@\[${CYAN}\]\H\[${WHITE}\]:\[${MAGENTA}\]\W\[${WHITE}\]\\$"
# Also Fancy Rainbow
# export PS1="\[${BOLD}\]\[${RED}\][\[${YELLOW}\]\u\[${GREEN}\]@\[${DARK_BLUE}\]\h \[${BASIC_MAGENTA}\]\W\[${RED}\]]\[${WHITE}\]\\$ \[$(tput sgr0)\]"
# ---------------------------------------------------------

# If we have a .bash_aliases file... use it
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
