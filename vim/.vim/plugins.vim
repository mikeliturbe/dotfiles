" Need this here for Vundle
filetype off

" Load Vundle for managing scripts
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Plugin Manager
Plugin 'gmarik/vundle'

" Sensible defaults
Plugin 'tpope/vim-sensible'

" Appearance
""""""""""""""""
" Color schemes
Plugin 'sheerun/vim-wombat-scheme'
Plugin 'jnurmine/Zenburn'
" Numbers  
Plugin 'myusuf3/numbers.vim'
" Statusline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Tmux integration
""""""""""""""""
" Integration vim/tmux windows
Plugin 'christoomey/vim-tmux-navigator'
" Tmux REPL integration
Plugin 'jpalardy/vim-slime'

" Moving around
""""""""""""""""
" Shell-like bindings in Vim
Plugin 'tpope/vim-rsi'
" Move easier
Plugin 'easymotion/vim-easymotion'

" Code editing
""""""""""""""""
" Commenting
Plugin 'scrooloose/nerdcommenter'
" Surroundings
Plugin 'tpope/vim-surround'
" Text aligning 
Plugin 'godlygeek/tabular'
" Snippets
Bundle 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Linting
Plugin 'w0rp/ale'
" Autocompletion
Plugin 'Valloric/YouCompleteMe'

" Language-specific plugins
""""""""""""""""
" LaTeX
Plugin 'lervag/vimtex'
" Python
Plugin 'vim-scripts/indentpython.vim'
" GNU Gettext 
Plugin 'vim-scripts/po.vim'

" Files & Buffers
""""""""""""""""
" File finding
Plugin 'ctrlpvim/ctrlp.vim'
" Buffer management
Plugin 'jeetsukumaran/vim-buffergator'
" Show open buffers
Plugin 'bling/vim-bufferline'


call vundle#end()
filetype plugin indent on
