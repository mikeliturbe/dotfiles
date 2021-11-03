# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
# Faster transition to normal
export KEYTIMEOUT=1
#jj to return to normal mode
bindkey -e ${$(tput kDC3 2>/dev/null):-'\e[3;3~'} kill-word
bindkey -M viins 'jj' vi-cmd-mode

#bindkey ';5D' emacs-backward-word
#bindkey ';5C' emacs-forward-word

setopt rmstarsilent

zmodload zsh/terminfo
#bindkey "$terminfo[kcuu1]" history-beginning-search-backward
#bindkey "$terminfo[kcud1]" history-beginning-search-forward

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# Vit variables
export VITPATH=$HOME/.local/bin
#export PATH=$PATH:$VITPATH

# Start Vim with server. Useful for synctex
#alias vim='vim --servername vim'
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Vi-mode
bindkey -v
# Faster transition to normal
export KEYTIMEOUT=1

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
