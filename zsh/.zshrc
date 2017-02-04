#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#Vi-mode
bindkey -v
#jj to return to normal mode
bindkey -M viins 'jj' vi-cmd-mode

bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word

setopt rmstarsilent

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-beginning-search-backward
bindkey "$terminfo[kcud1]" history-beginning-search-forward

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

#Go variables
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin

# Start Vim with server. Useful for synctex
alias vim='vim --servername vim'
