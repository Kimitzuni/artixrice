#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$(find ~/.local/bin/ -type d | paste -sd ':' -):$PATH"
export EDITOR=nvim
export BROWSER=qutebrowser
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export HISTFILE="$XDG_DATA_HOME/history"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"

export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export LESS="R"
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
export QT_QPA_PLATFORMTHEME="gtk2"
export MOZ_USE_XINPUT2=1
export SUDO_PROMPT="Password: "

chmod a+x $HOME/.cache/wal/colors.sh
$HOME/.cache/wal/colors.sh

[ "$(tty)" = "/dev/tty1" ] && [ -z "$(pgrep 'i3')" ] && startx
