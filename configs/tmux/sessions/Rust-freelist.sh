#!/bin/bash

source ~/.config/tmux/utils/workspace_env.sh
session="Rust-freelist"

if ! tmux has-session -t $session >/dev/null 2>&1; then
    path="$HOME/Repositories/freelist/src"
    file="$path/lib.rs"
    tmux new-session -d -s $session -c $path -n nvim "nvim $file"
    tmux new-window -c $path -n "git" "lazygit"
    tmux new-window -c $path -n "shell" fish
    tmux select-window -t 1
fi

tmux attach-session -t $session
