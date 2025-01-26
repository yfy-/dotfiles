#!/bin/zsh

SCRIPT_DIR=${0:a:h}

# Alacritty
mkdir -p ~/.config/alacritty/themes/
ln -s $SCRIPT_DIR/modus_vivendi.toml ~/.config/alacritty/themes/modus_vivendi.toml
ln -s $SCRIPT_DIR/.alacritty.toml ~/.alacritty.toml

# Tmux
tic -x -o ~/.terminfo terminfo-24bit.src
mkdir -p ~/.tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s $SCRIPT_DIR/.tmux.conf ~/.tmux.conf

# Python Black
ln -s $SCRIPT_DIR/black ~/.config/black
