# Added by me

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE

typeset -U path
path=($HOME/go/bin ~/.local/bin $path[@])

export EDITOR=code
export LC_CTYPE="en_US.UTF-8"
export GOPATH=~/go

# End added by me
