#!/bin/bash

export TMUX="/tmp/tmux-terminal"
tmux start-server
export TMUX="/tmp/tmux-tor"
tmux start-server
export TMUX="/tmp/tmux-workspace"
tmux start-server
