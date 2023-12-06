#!/bin/sh

if [ -f "$HOME"/.xprofile ]; then
    . "$HOME"/.xprofile
fi

exec dwm.sh 2> "$HOME"/tmp/dwm.log
