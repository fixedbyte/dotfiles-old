# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
PROMPT='${#${%K{red}%E%B%n@%M%b%k %h %1~$ t:%w:---()--}}%E${$HOME}'
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wilmer/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
alias ls="lsd"
alias cat="bat"

neofetch
