#!/bin/sh
# A background program. It runs while the plugin is on and is stopped when you turn it off.
# Anything it prints goes to ~/.local/state/vesper/plugin-<folder>.log
echo "hello plugin started in $VESPER_PLUGIN_DIR (socket: $VESPER_SOCKET)"
while true; do
    sleep 3600
done
