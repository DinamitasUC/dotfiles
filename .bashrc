#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias update='yay -Syu'
PS1='[\u@\h \W]\$ '
export LANG=es_ES.UTF-8
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
