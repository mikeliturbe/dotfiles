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
#bindkey -v
#jj to return to normal mode
bindkey -M viins 'jj' vi-cmd-mode

#bindkey ';5D' emacs-backward-word
#bindkey ';5C' emacs-forward-word

setopt rmstarsilent

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-beginning-search-backward
bindkey "$terminfo[kcud1]" history-beginning-search-forward

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

#Go variables
#export GOPATH=$HOME/dev/go
#export PATH=$PATH:$GOPATH/bin

# Start Vim with server. Useful for synctex
alias vim='vim --servername vim'
# Easy note capture
alias in='vim ~/vimwiki/inbox.wiki'

# Taskwarrior 
alias t='task'
alias ta="task add"
alias td="task done"
alias t-="task delete"
alias tm="task modify"
alias tu="task undo"
alias tv="vit rc.alias.next=list"
alias tw1="task modify wait:1d"

# Taskwarrior completion
zstyle ':completion:*:*:task:*' verbose yes
zstyle ':completion:*:*:task:*:descriptions' format '%U%B%d%b%u'

zstyle ':completion:*:*:task:*' group-name ''

## main categories
alias tik="t project:Ik"
alias tmu="t project:Mu"
alias tir="t project:Ir"

# Timewarrior
alias tw='timew'

## summaries
#alias twd='timew day'
#alias tww='timew week'
alias tws='timew summary :ids'
alias twsy='timew summary :ids :yesterday'
alias twsc='timew summary 2018-09-01 - today'

## actions
alias twa='timew start'
alias twt='timew stop'
#alias twc='timew continue'

alias twb='timew track'

## edit
alias twes='timew shorten'
alias twel='timew lengthen'

# Tmux 
alias tks='tmux kill-server'

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Buku 
alias bk='buku'

# Quoted text objects
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# Bracketed text objects
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
	for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
	  bindkey -M $m $c select-bracketed
	done
done
