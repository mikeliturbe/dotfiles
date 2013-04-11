" Need this here for Vundle
set nocompatible

" Load Vundle for managing scripts
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle update itself
Bundle 'gmarik/vundle'

" Color schemes
Bundle 'Wombat'
" Syntaxes
Bundle 'wikipedia.vim'

Bundle 'scrooloose/nerdcommenter'
Bundle 'myusuf3/numbers.vim'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'

" LaTeX
Bundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'
