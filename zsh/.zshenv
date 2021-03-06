#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Remove annoying DBUS error when launching GUI apps
export NO_AT_BRIDGE=1
export FZF_TMUX=1
export FZF_TMUX_HEIGHT=20%

# FSF
#export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#bind -x '"\C-p": vim $(fzf);'
