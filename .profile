#
# ~/.profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export PATH=$PATH:~/.local/bin:~/.local/usr/bin

export TERMINAL="termite"

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  startx
fi
