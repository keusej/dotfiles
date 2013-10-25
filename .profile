PATH="/usr/local/heroku/bin:$PATH"
PS1="\[\033[0;34m\][$(date +%H:%M)] \[\033[0;32m\]\u\[\033[0;36m\]@\[\033[0;32m\]\h\[\033[0;34m\] \W\[\033[0;32m\]$(parse-git-branch.sh) \[\033[0;34m\]$\[\033[00m\]\n"
export OOO_FORCE_DESKTOP=gnome
