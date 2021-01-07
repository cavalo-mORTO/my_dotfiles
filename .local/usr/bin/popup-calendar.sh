#!/bin/sh

DATE="$(date +"%a %d %H:%M")"

case "$1" in
--popup)
    yad --calendar --fixed --close-on-unfocus --no-buttons &
    ;;
*)
    echo "$DATE"
    ;;
esac
