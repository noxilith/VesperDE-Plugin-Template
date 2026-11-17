#!/bin/sh
# Runs when the bar widget is clicked, or when you pick "Say hello" in the launcher.
notify-send "Hello from a Vesper plugin" "It is $(date)" 2>/dev/null || echo "hello" >&2
