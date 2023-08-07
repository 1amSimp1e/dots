#!/bin/sh

[[ "$(dunstctl history | jq -r '.data[0]')" = "[]" ]] && echo true || echo false
