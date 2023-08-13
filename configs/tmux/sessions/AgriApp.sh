#!/bin/bash

source ~/.config/tmux/utils/workspace_env.sh
session="AgriApp"

if ! tmux has-session -t $session >/dev/null 2>&1; then
    path="$HOME/Repositories/AgriApp"
    file="$path/.github/README.md"
    tmux new-session -d -s $session -c $path -n nvim "nvim $file"
    tmux new-window -c $path -n "git" "lazygit"
    tmux new-window -c $path -n "client" "cargo tauri dev"
    tmux new-window -c $path -n "shell" fish
    tmux select-window -t 1
fi

tmux attach-session -t $session
