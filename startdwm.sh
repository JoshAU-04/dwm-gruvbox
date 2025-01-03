#!/usr/bin/env bash

[ -f "~/.Xresources" ] && xrdb -merge "~/.Xresources"
[ -f "~/.Xmodmap" ] && xmodmap "~/.Xmodmap"

[ pidof xcompmgr ]] >/dev/null && killall xcompmgr
xcompmgr -n &

feh --bg-fill -z "/home/t_doctor/Pictures/Favourites"
setxkbmap us

dwmbar &

systemctl --user import-environment DISPLAY

xset -r -b

exec dwm
