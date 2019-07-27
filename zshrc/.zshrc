# .ohmyzsh

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lambda-mod"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# EDITOR

export VISUAL=vim
export EDITOR=$VISUAL

# ASDF

export PATH=$HOME/.asdf/shims:$PATH

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
