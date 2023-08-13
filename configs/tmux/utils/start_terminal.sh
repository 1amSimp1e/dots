#!/bin/bash

export TMUX="/tmp/tmux-terminal"
tmux start-server
tmux -f ~/.config/tmux/terminal.conf new-session -n "shell" fish
