# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PS1="\[\033[0;34m\][$(date +%H:%M)] \[\033[0;32m\]\u\[\033[0;36m\]@\[\033[0;32m\]\h\[\033[0;34m\] \W\[\033[0;32m\]$(parse-git-branch.sh) \[\033[0;34m\]\n$ \[\033[00m\]"

alias dsa='du -d1|sort -h'
alias ds="du -kh -d1 | sort -n | cut -f2 | xargs -d '\n' du -sh"

