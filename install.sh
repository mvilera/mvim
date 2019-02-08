#!/bin/sh
set -e

if [ -f ~/.config/nvim/init.vim ]; then
    echo "nvim init file already exists, aborting."
    exit 1
fi

if [ ! -f ~/.mvim/mvilera.vim ]; then
    echo "mvilera.vim not found, aborting."
    exit 1
fi

mkdir -p ~/.config/nvim
cat <<EOF > ~/.config/nvim/init.vim
set runtimepath^=~/.mvim runtimepath+=~/.mvim/after
let &packpath = &runtimepath
source ~/.mvim/mvilera.vim
EOF

echo "Installed successfully."
