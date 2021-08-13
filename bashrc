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
alias glog="git log --decorate --graph --branches  --oneline --tags"
alias pytagger="ctags -R --fields=+l --languages=python --python-kinds=-iv ."
alias nooff="xset -dpms s off"
alias ctagger="ctags --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -R ."

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\n[\[\033[01;34m\]\u@\h : \w\[\033[0m\]] \$(parse_git_branch)\n\@\[\033[01;34m\]->\[\033[0m\] "

#Fixing locale
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
export LANG=en_US.UTF-8
export EDITOR=vim
export HISTFILESIZE=2000
export HISTSIZE=2000
set -o vi
bind '"jh":vi-movement-mode'

[[ $TERM != "screen" ]] && exec tmux
