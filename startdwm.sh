#!/usr/bin/env bash

[ -f "~/.Xresources" ] && xrdb -merge "~/.Xresources"
[ -f "~/.Xmodmap" ] && xmodmap "~/.Xmodmap"

[ pidof xcompmgr ]] >/dev/null && killall xcompmgr
xcompmgr -n &

setxkbmap us -variant colemak -option 'ctrl:nocaps'

kitty &
feh --bg-fill "/home/t_doctor/Pictures/Wallpapers/13-Autumn-trees-Foliage.jpg" &

dwmblocks &

exec dwm
