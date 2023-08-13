#!/bin/bash
source ~/.config/tmux/utils/env.sh
tmux list-sessions -F "#S" | grep '[^0-9]'
