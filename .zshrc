export ZSH=/Users/sergioaugrod/.oh-my-zsh

ZSH_THEME="lambda-mod"

DISABLE_AUTO_TITLE="true"
plugins=(git)

# User configuration

export PATH="/Users/sergioaugrod/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# Aliases

alias be="bundle exec"
alias dotfiles="cd ~/projects/dotfiles"
alias clojure="cd ~/studies/clojure"
alias nosleep="pmset noidle"

# Environments

export VISUAL=vim
export EDITOR=$VISUAL
export NVM_DIR="/Users/sergioaugrod/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Tmux colors fix

export TERM="xterm-256color"
