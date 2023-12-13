#!/bin/bash

if [ -f "$HOME"/.xprofile ]; then
    source "$HOME"/.xprofile
fi

exec dwm 2> "$HOME"/tmp/dwm.log
