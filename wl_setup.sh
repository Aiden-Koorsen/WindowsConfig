#!/bin/bash

set -e

echo "Updating package lists..."
sudo apt update && sudo apt upgrade -y

echo "Installing development tools..."
sudo apt install -y git gcc make valgrind python3 python3-pip nodejs npm emacs golang php ocaml curl

echo "Installing a fancy terminal (e.g., Zsh + Oh My Zsh)..."
sudo apt install -y zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Cloning and building Raylib..."
git clone https://github.com/raysan5/raylib.git ~/raylib
cd ~/raylib/src
make PLATFORM=PLATFORM_DESKTOP
sudo make install

echo "Cloning your Emacs config..."
git clone https://github.com/Aiden-Koorsen/emacs-config ~/.emacs.d

echo "Installing Golang tools..."
sudo snap install go --classic

echo "Setup complete!"
