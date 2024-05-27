export ZSH=$HOME/.oh-my-zsh

# https://github.com/halfo/lambda-mod-zsh-theme
ZSH_THEME="lambda-mod"

plugins=(asdf git)

zstyle ':omz:alpha:lib:git' async-prompt no

source $ZSH/oh-my-zsh.sh

# EDITOR

export VISUAL=nvim
export EDITOR=$VISUAL

alias vim=nvim

# GO PATH

export PATH="$PATH:$(go env GOPATH)/bin"
