#!/usr/bin/env bash

set -e

REPO_URL="https://github.com/TheRealCarrotty/k4cpizz-cool-sway.git"
REPO_DIR="$HOME/k4cpizz-cool-sway"

echo "==> Installing k4cpizz cool sway config..."

# Clone if not already cloned
if [ ! -d "$REPO_DIR" ]; then
    echo "Cloning repo..."
    git clone "$REPO_URL" "$REPO_DIR"
else
    echo "Repository already exists. Pulling latest changes..."
    cd "$REPO_DIR"
    git pull
fi

echo "Copying configs to ~/.config..."

mkdir -p "$HOME/.config"

cp -r "$REPO_DIR/sway" "$HOME/.config/"
cp -r "$REPO_DIR/waybar" "$HOME/.config/"
cp -r "$REPO_DIR/kitty" "$HOME/.config/"

echo "Configs installed to ~/.config."
echo "Have a nice day using my configs!"
