#!/usr/bin/bash
makedirs() {
  for i in `find ./ -type d | grep -v ".git" | grep -v '^./$'` 
  do
      mkdir $HOME/$i
  done
}


  linkfiles() {
  for i in `find ./ -type f | grep -v ".git" | grep -v README.md | grep -v viminstall.sh`
  do
    ln -s $PWD/$i $HOME/$i
  done
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
