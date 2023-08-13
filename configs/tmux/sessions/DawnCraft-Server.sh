#!/bin/bash

source ~/.config/tmux/utils/workspace_env.sh
session="DawnCraft-Server"

if ! tmux has-session -t $session >/dev/null 2>&1; then
    path="$HOME/Repositories/minecraft-server"
    file="$path/.github/README.md"
    tmux new-session -d -s $session -c $path -n "local-editor" "nvim $file"
    tmux new-window -c $path -n "local-git" "lazygit"
    tmux new-window -n "server-monitor" "ssh $session"
    tmux send-keys "btop" Enter
    tmux new-window -n "server-console" "ssh $session"
    tmux send-keys "./minecraft-server/scripts/attach.sh" Enter
fi

tmux attach-session -t $session
