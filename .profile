#
# ~/.profile
#

[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# use nvidia gpu
# export __GLX_VENDOR_LIBRARY_NAME=nvidia
# export __NV_PRIME_RENDER_OFFLOAD=1

export PATH=$PATH:$HOME/.local/bin:$HOME/.bin
export TERMINAL="termite"
export VISUAL="nvim"

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	startx
fi
