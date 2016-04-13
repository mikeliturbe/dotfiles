" Need this here for Vundle
set nocompatible
filetype off

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
Plugin 'lervag/vimtex'
" Python-related plugins
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
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
" Tmux integration
Plugin 'christoomey/vim-tmux-navigator'
" Buffer management
Plugin 'jeetsukumaran/vim-buffergator'
" Snippets
Bundle 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Other
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'

call vundle#end()
filetype plugin indent on
