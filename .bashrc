#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
