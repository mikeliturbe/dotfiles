#!/usr/bin/bash
makedirs() {
  find ./ -type d -exec mkdir -p "$HOME/{}" \;
}

  linkfiles() {
  find ./ -type f  -exec ln -s "$PWD/{}" "$HOME/{}" \;
}
makedirs
linkfiles

if [ ! -d ~/.vim/bundle/vundle ]; then
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

vim -u  ~/.vim/bundles.vim '+BundleInstall' '+qall'

if [ ! -d ~/.vim/colors ]; then
	mkdir ~/.vim/colors
fi

cd ~/.vim/colors
wget http://www.pauldee.org/wombat.vim
sed -e 's/wombat/wombatt/g' wombat.vim > wombatt.vim
rm wombat.vim
cd
