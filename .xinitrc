#!/bin/bash

if [ -f "$HOME"/.xprofile ]; then
    source "$HOME"/.xprofile
fi

exec dwm.sh 2> "$HOME"/tmp/dwm.log
