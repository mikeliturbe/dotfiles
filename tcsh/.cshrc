#
# .cshrc - csh resource script, read at beginning of execution by each shell
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA
alias c   clear
alias tmux tmux -2

# A righteous umask
umask 22

bindkey '^[[1;5D'   backward-word           # ctrl+left
bindkey '^[[1;5C'   forward-word            # ctrl+right

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/bin)

setenv	EDITOR	vi
setenv	PAGER	more
setenv	BLOCKSIZE	K
setenv CLICOLOR

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	set prompt = "%B%n@%~%b: "
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif

# Does not need cd to change directory
set implicitcd
