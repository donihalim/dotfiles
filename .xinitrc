#!/bin/bash -x

exec >/tmp/startx$$.log 2>&1

if [ -f $HOME/.xprofile ]; then
    . $HOME/.xprofile
fi

exec startdwm 2> ~/tmp/dwm.log
