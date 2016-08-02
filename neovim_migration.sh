#!/bin/bash

# Script to migrate to Neovim from Vim

# Install neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# Migrate dotfiles from Vim
mkdir ~/.config/nvim
ln -s ./vim/.vimrc ~/.config/nvim/init.vim

# Support for Python extensions
sudo apt-get install python-dev python-pip python3-dev python3-pip

sudo pip2 install --upgrade neovim
sudo pip3 install --upgrade neovim
