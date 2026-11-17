#!/bin/sh
# Make a file you can share: vesper-plugin.tar.gz (install it in Settings > Plugins > Install from a folder or .tar.gz).
set -eu
cd "$(dirname "$0")"
name=$(basename "$PWD")
tar -czf "../$name.tar.gz" -C .. "$name" --exclude=.git
echo "wrote ../$name.tar.gz"
