#!/bin/bash

main() {
  printf "\033[0;34mStarting dotfiles bootstrap\n"

  install_ohmyzsh
  install_fonts
  move_dotfiles
  prepare_vim

  printf "\033[0;34mBootstrap completed.\n"
}

######################
# ZSH
######################

install_ohmyzsh () {
  printf "\033[0;32mInstalling ohmyzsh...\n"

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

install_fonts() {
  printf "\033[0;32mInstalling source code pro font...\n"

  local source_code_font_url="https://github.com/powerline/fonts/blob/master/SourceCodePro/Sauce%20Code%20Powerline%20Regular.otf"
  local source_code_font_name="font.otf"

  curl -o $source_code_font_name $source_code_font_url
  open $source_code_font_name
  rm $source_code_font_name
}

######################
# DOTFILES
######################

move_dotfiles() {
  printf "\033[0;32mMoving dotfiles...\n"

  cp .vimrc $HOME
  cp .tmux.conf $HOME
}

######################
# VIM
######################

prepare_vim() {
  printf "\033[0;32mPreparing vim...\n"

  install_vundle
  vim +PluginInstall
}

install_vundle() {
  git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
}

main
