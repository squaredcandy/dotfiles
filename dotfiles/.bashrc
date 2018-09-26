export EDITOR=nano
export PAGER=more
export PULSE_SERVER=tcp:localhost
export DISPLAY=:0
cd ~/
xrdb ~/.Xresources

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '

# Check for an interactive session
[ -z "$PS1" ] && return

blue="\[\033[1;34m\]"
localGrey="\[\033[1;30m\]"
red="\[\033[1;31m\]"
orange="\[\e[0;33m\]"
white="\[\033[0m\]"

_PROMPT() {
    _EXIT_STATUS=$?
    [ $_EXIT_STATUS != 0 ] && _EXIT_STATUS_STR="$localGrey[$red$_EXIT_STATUS$localGrey] "
    PS1="$localGrey» $orange\u$localGrey╺╸$_EXIT_STATUS_STR$localGrey[$white\W$localGrey]$blue;$white "
    unset _EXIT_STATUS_STR
}

PROMPT_COMMAND=_PROMPT
