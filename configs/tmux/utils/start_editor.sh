#!/bin/bash

source ~/.config/tmux/utils/workspace_env.sh
tmux -f ~/.config/tmux/tmux.conf new-session -n "editor" "nvim"
