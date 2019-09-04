#!/bin/sh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install oh-my-zsh pulg-ins
# Spaceship ZSH 
git clone https://github.com/denysdovhan/spaceship-prompt.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt"
ln -s "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme"
echo "TODO Set ZSH_THEME="spaceship" in your .zshrc"

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "TODO Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
    plugins=(zsh-autosuggestions)"

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "TODO plugins=( [plugins...] zsh-syntax-highlighting)"
