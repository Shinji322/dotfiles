#!/usr/bin/env bash
(sleep 1; dwmblocks) &

# Allows you to restart dwm without killing Xorg 
while true; do
  dwm >/dev/null
done
