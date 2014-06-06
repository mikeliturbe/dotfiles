" Need this here for Vundle
set nocompatible

" Load Vundle for managing scripts
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle update itself
Bundle 'gmarik/vundle'

" Color schemes
Bundle 'Wombat' 
" Commenting
Bundle 'scrooloose/nerdcommenter'
" Numbers  
Bundle 'myusuf3/numbers.vim'
" Surroundings
Bundle 'tpope/vim-surround'
" File finding
Bundle 'kien/ctrlp.vim'
" Text aligning 
Bundle 'godlygeek/tabular'
" LaTeX bundle
Bundle 'jcf/vim-latex'
" Python PEP8 compliant
Bundle 'nvie/vim-flake8'
" Bufferline
Bundle 'bling/vim-bufferline'
" Statusline
Bundle 'bling/vim-airline'
" Sensible defaults
Bundle 'tpope/vim-sensible'
