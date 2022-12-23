#!/usr/bin/env bash

(sleep 2; dwmblocks; autorandr) &

# Allows you to restart dwm without killing Xorg 
while true; do
  dwm >/dev/null
done
