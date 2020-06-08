#!/usr/bin/env bash

# specify the directories where the themes reside for each app
nvim_colors=$HOME/.config/nvim/colors/
x_themes=$HOME/.Xresources.d/
termite_themes=$HOME/.config/termite/themes/

paths=($nvim_colors $x_themes $termite_themes)

# provide bash completion
arr=$(ls "${paths[@]}" | grep -v "^$HOME" | sed "s/\..*//" | uniq)
complete -W "${arr[@]}" theme_select

unset nvim_colors
unset x_themes
unset termite_themes
unset paths
unset arr