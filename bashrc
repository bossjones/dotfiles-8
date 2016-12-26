[[ $TERM = linux ]] && export LC_MESSAGES="C"

umask 022

# If not running interactively, don't do anything else
[[ $- != *i* ]] && return

HISTCONTROL=ignoredups
HISTFILE=${XDG_CACHE_HOME}/history/bash
HISTFILESIZE=1000
HISTSIZE=1000
PS1='\[\033[01;32m\]\u@\h\[\033[39m\]:\[\033[34m\]\w\[\033[00m\]\$ '

shopt -s checkwinsize
shopt -s histappend
stty -ixon

. "$XDG_CONFIG_HOME"/aliases
