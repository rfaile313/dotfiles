# Basic, non-private bash aliases

# Easy edit shortcuts 
alias home="cd ~"
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias editalias='vim ~/.bash_aliases'
alias interfaces='sudo vim /etc/network/interfaces'
alias hosts='sudo vim /etc/hosts'

# Show ports / connections / ip
alias openports='sudo lsof -i -P -n | grep LISTEN'
alias activesshsessions="ss -n -o state established '( dport = :22 or sport = :22 )'"
alias whatismyip='curl ifconfig.me'

# Colorful greps n' stuff
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias dir='dir --color=auto'

# Make parent / show work 
alias mkdir='mkdir -vp'
alias mv='mv -iv'
alias cp='cp -v'

# Reload active shell session
alias rl="exec $SHELL"

# Lazy Updates
alias update='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'

# Git shortcuts
alias commitlog='git log --pretty=oneline --decorate'
alias ga='git add .'
alias gc='git commit'
alias stash='git stash'
alias gp='git push'
alias gpr="git push --set-upstream origin $(git branch --show-current)"
# force local to sync with remote
alias syncwithmaster="git fetch origin && git reset --hard origin/$(git branch --show-current) && git clean -f -d"

# Tools
alias loadtime="time zsh -i -c echo"
alias whatismyip="echo 'curl ipv4.icanhazip.com' && curl ipv4.icanhazip.com"
