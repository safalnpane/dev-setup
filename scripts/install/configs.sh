#!/bin/bash

rm -f $HOME/.bashrc
rm -f $HOME/.zshrc
rm -f $HOME/.config/i3
rm -f $HOME/.config/ghostty
rm -f $HOME/.config/nvim
rm -f $HOME/config/polybar
rm -f $HOME/.local/bin/scripts

# symlink the i3 config
ln -s $HOME/Developer/dev-setup/configs/i3/ $HOME/.config/i3

# symlink the ghostty config
ln -s $HOME/Developer/dev-setup/configs/ghostty/ $HOME/.config/ghostty

# symlink the tmux config
ln -s $HOME/Developer/dev-setup/configs/tmux/tmux.conf $HOME/.tmux.conf

# symlink the nvim directory
ln -s $HOME/Developer/dev-setup/configs/nvim/ $HOME/.config/nvim

# symlink the polybar directory
ln -s $HOME/Developer/dev-setup/configs/polybar/ $HOME/.config/polybar

# symlink the zshrc
ln -s $HOME/Developer/dev-setup/configs/bash/bashrc $HOME/.zshrc

# symlink for scripts
mkdir -p $HOME/.local/bin
ln -s $HOME/Developer/dev-setup/scripts/ $HOME/.local/bin/scripts
