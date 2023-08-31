#!/bin/bash

# Migrate dotfiles from Vim
mkdir ~/.config/nvim
stow -t ~/.config/nvim vim
ln -s ~/.config/nvim/.vimrc ~/.config/nvim/init.vim

nvim +PlugInstall

