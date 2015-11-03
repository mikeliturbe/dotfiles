#!/usr/bin/bash
if [ ! -d ~/.vim/bundle/vundle ]; then
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

vim -u  ~/.vim/plugins.vim '+PluginInstall' '+qall'
