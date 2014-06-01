# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Append current git branch in prompt
parse_git_branch() {
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi
 
  git_branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
 
  echo "[$git_branch]"
}
 
# User specific aliases and functions
#PS1="\[\033[0;34m\][$(date +%H:%M)]
#\[\033[0;32m\]\u\[\033[0;36m\]@\[\033[0;32m\]\h\[\033[0;34m\]
#\W\[\033[0;32m\]\$(parse-git-branch) \[\033[0;34m\]\n$ \[\033[00m\]"

PS1="\[\033[01;36m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\w\[\033[00m\]\[\033[01;31m\]\$(parse_git_branch)\[\033[00m\]\n$ "


PATH=$PATH:~/.local/bin

alias dsa='du -d1|sort -h'
alias ds="du -kh -d1 | sort -n | cut -f2 | xargs -d '\n' du -sh"
alias zino="sudo mount -t cifs //zino/usbdrive/ /mnt/zino-usbdrive -o username=keusej"
alias qmake="qmake-qt4"
