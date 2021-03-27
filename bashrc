#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias python=/usr/bin/python2.7
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'
alias vi=vim
alias ll='ls -lhA'
alias top=htop
alias glog="git log --decorate --graph --branches  --oneline --tags"
alias pytagger="ctags -R --fields=+l --languages=python --python-kinds=-iv ."
alias nooff="xset -dpms s off"
alias ctagger="ctags --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -R ."


PS1="\n[\w]\n\@ -> "

#Fixing locale
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
export LANG=en_US.UTF-8
export EDITOR=vim
set -o vi
