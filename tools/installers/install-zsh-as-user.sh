#!/bin/bash
set -e

sudo apt -y install curl git zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sed -Ei 's/^ZSH_THEME=".+"/ZSH_THEME="gnzh"/' ${HOME}/.zshrc
sed -Ei 's/^plugins=\(.*\)/plugins=( autojump colorize colored-man-pages command-not-found git timer zsh-autosuggestions zsh-syntax-highlighting )/' ${HOME}/.zshrc
