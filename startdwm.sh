#!/usr/bin/env bash

wallpaper="~/Pictures/Wallpapers/13-Autumn-trees-Foliage.jpg"

[ -f "~/.Xresources" ] && xrdb -merge "~/.Xresources"
[ -f "~/.Xmodmap" ] && xmodmap "~/.Xmodmap"

[ -f "$wallpaper" ] && feh --bg-fill --no-fehbg --no-xinerama "$wallpaper" &
[ -z "$DISPLAY" ] && loadkeys colemak || setxkbmap us -variant colemak -option 'ctrl:nocaps'

[ pidof xcompmgr ]] >/dev/null && killall xcompmgr
xcompmgr -n &

dwmblocks &

exec dwm
