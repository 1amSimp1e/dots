#!/bin/bash

#!/bin/bash

source ~/.config/tmux/utils/workspace_env.sh
tmux -f ~/.config/tmux/tmux.conf new-session -n "wifi" "iwctl && station wlan0 scan && station wlan0 get-networks"
