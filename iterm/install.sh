#!/usr/bin/env bash

$ZSH_FOLDER="$HOME/.oh-my-zsh/"

#install oh-my-ssh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
mv ~/.zshrc .zshrc-newsest
cp .zshrc ~/.zshrc

# install zsh-autosuggestions plugins
if [ -d "$ZSH_FOLDER" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi
