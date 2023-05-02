#!/usr/bin/env bash
(
  command -v autorandr && autorandr -c
  arpid=$!
) &
(
  [ -n "$arpid" ] && wait "$arpid"
  setbg
) &

# Allows you to restart dwm without killing Xorg
while true; do
  dwm 2>~/.local/share/dwm.log
done
