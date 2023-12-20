#!/bin/bash

if ! tmux has-session -t zet 2>/dev/null; then
    cd ~/notes || exit 1
    tmux new -s zet -d
    tmux send-keys -t zet:1 "nvim +ZkBrowse" C-m
fi

tmux attach -t zet
