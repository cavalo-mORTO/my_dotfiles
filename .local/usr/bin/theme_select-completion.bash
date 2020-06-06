#!/usr/bin/env bash

# specify the directories where the themes reside for each app
nvim=$HOME/.config/nvim/colors/
X=$HOME/.Xresources.d/
termite=$HOME/.config/termite/themes/

paths=($nvim $X $termite)

# provide bash completion
arr=$(ls "${paths[@]}" | sed 's/.vim//' | uniq)
complete -W "${arr[@]}" theme_select
