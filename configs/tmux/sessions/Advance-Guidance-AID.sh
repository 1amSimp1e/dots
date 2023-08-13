#!/bin/bash

sshfs ag_aid_ec2_instance:/home/Ubuntu AdvanceGuidance/Mounts/EC2 

source $HOME/.config/tmux/utils/workspace_env.sh
session="Advance-Guidance-AID"

if ! tmux has-session -t $session >/dev/null 2>&1; then
    path="$HOME/AdvanceGuidance/Mounts/EC2/home/ubuntu/tb-model-dev"
    file="$path/README.md"
    tmux new-session -d -s $session -c $path -n nvim "source $path/venv/bin/activate && nvim $file"
    tmux new-window -c $path -n "git" "lazygit"
    tmux new-window -c $path -n "shell" fish
    tmux select-window -t 1
fi

tmux attach-session -t $session
