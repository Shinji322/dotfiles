#!/usr/bin/env bash
(sleep 1; dwmblocks) &
(command -v autorandr && autorandr -c && arpid=$!) & # automatically set resolution and stuff
([ -n "$arpid" ] && wait "$arpid"; setbg) &

# Allows you to restart dwm without killing Xorg 
while true; do
  dwm 2> ~/.local/share/dwm.log
done
