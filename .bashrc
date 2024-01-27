#
#  _               _              
# | |__   __ _ ___| |__  _ __ ___ 
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__ 
# |_.__/ \__,_|___/_| |_|_|  \___|
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


###############################################################################

for command in reboot shutdown; do
	alias $command="sudo $command"
done; unset $command

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
stty -ixon
shopt -s autocd
HISTSIZE= HISTFILESIZE=

[ -f "$HOME/.config/shell/aliasrc" ] && source $HOME/.config/shell/aliasrc
[ -f "$HOME/.config/shell/dirsrc" ] && source $HOME/.config/shell/dirsrc
