" Need this here for Vundle
set nocompatible

" Load Vundle for managing scripts
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Let Vundle update itself
Plugin 'gmarik/vundle'

" Color schemes
Plugin 'sheerun/vim-wombat-scheme'
Plugin 'jnurmine/Zenburn'

" Commenting
Plugin 'scrooloose/nerdcommenter'
" Numbers  
Plugin 'myusuf3/numbers.vim'
" Surroundings
Plugin 'tpope/vim-surround'
" File finding
Plugin 'ctrlpvim/ctrlp.vim'
" Text aligning 
Plugin 'godlygeek/tabular'
" LaTeX bundle
Plugin 'jcf/vim-latex'
" Bufferline
Plugin 'bling/vim-bufferline'
" Statusline
Plugin 'bling/vim-airline'
" Sensible defaults
Plugin 'tpope/vim-sensible'
" Easier PO editing
Plugin 'vim-scripts/po.vim'
" Shell-like bindings in Vim
Plugin 'tpope/vim-rsi'
" Other
Plugin 'scrooloose/syntastic'
Plugin 'easymotion/vim-easymotion'

call vundle#end()
