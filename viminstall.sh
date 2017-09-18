#!/usr/bin/bash
if [ ! -d ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim -u  ~/.vim/plugins.vim '+PlugInstall' '+qall'
