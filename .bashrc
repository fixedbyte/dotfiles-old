#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[33m\]$(__git_ps1 "(%s)")\[\033[37m\]\$\[\033[00m\] '
neofetch
