#!/bin/sh
set -e

echo "** Checking if a previous install exists"  
if [ -f ~/.config/nvim/init.vim ]; then
    echo "nvim init file already exists, aborting."
    exit 1
fi

if [ ! -f ~/.mvim/mvilera.vim ]; then
    echo "mvilera.vim not found, aborting."
    exit 1
fi

echo "** Checking if nvim is installed"
if [ -x "$(command -v nvim)" ]; then
    echo "NVIM not found, installing..."
    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install neovim
fi

echo "** Creating required files and directories"
mkdir -p ~/.config/nvim
cat <<EOF > ~/.config/nvim/init.vim
set runtimepath^=~/.mvim runtimepath+=~/.mvim/after
let &packpath = &runtimepath
source ~/.mvim/mvilera.vim
EOF

echo "** Installed successfully."
