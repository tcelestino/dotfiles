#!/usr/bin/env bash

#install oh-my-ssh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
mv ~/.zshrc .zshrc-newsest
cp .zshrc ~/.zshrc
