#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

# Uodate X Resources DB
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Update DPI and Monitor Resolution
xrandr --newmode "2560x1440R"  241.50  2560 2608 2640 2720  1440 1443 1448 1481 +hsync -vsync
xrandr --addmode DP-1.8 2560x1440R
xrandr --output DP-1.8 --mode 2560x1440R --right-of DVI-D-0
xrandr --dpi 84

# Wallpaper via Nitrogen
nitrogen --restore &

# Start i3wm
exec i3

# Start Wingo
#exec wingo
