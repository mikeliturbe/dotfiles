
" Load Vundle for managing scripts
call plug#begin('~/.vim/plugged/')

" Sensible defaults
Plug 'tpope/vim-sensible'

" Appearance
""""""""""""""""
" Color schemes
Plug 'sheerun/vim-wombat-scheme'
Plug 'jnurmine/Zenburn'
" Numbers  
Plug 'myusuf3/numbers.vim'
" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tmux integration
""""""""""""""""
" Integration vim/tmux windows
Plug 'christoomey/vim-tmux-navigator'
" Tmux REPL integration
Plug 'jpalardy/vim-slime', {'for': 'python'}

" Moving around
""""""""""""""""
" Shell-like bindings in Vim
Plug 'tpope/vim-rsi'
" Move easier
Plug 'easymotion/vim-easymotion'

" Code editing
""""""""""""""""
" Commenting
Plug 'scrooloose/nerdcommenter'
" Surroundings
Plug 'tpope/vim-surround'
" Text aligning 
Plug 'godlygeek/tabular'
" Snippets
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Linting
Plug 'w0rp/ale'
" Autocompletion
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.sh
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

" Language-specific plugins
""""""""""""""""
" LaTeX
Plug 'lervag/vimtex', {'for': 'tex'}
" Python
Plug 'vim-scripts/indentpython.vim', { 'for': 'python' }
" GNU Gettext 
Plug 'vim-scripts/po.vim', {'for': 'po'}

" Files & Buffers
""""""""""""""""
" Fuzzy file finding
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Pairings
Plug 'tpope/vim-unimpaired'

" Productivity
""""""""""""""""
" Personal Wiki
" Dev branch for taskwiki
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'

call plug#end()
