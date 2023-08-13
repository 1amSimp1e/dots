#!/bin/bash

export TMUX="/tmp/tmux-tor"
tmux start-server
tmux -f ~/.config/tmux/tor.conf new-session -n "tor" "proxychains -q fish"
