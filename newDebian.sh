#!/bin/sh

# change source
# https://github.com/oooldking/script
wget    git.io/superupdate.sh
bash    superupdate.sh
rm      superupdate.sh

# update apt
apt update
apt upgrade

# install some packages
apt install sudo git zsh neovim neofetch -y

# add normal user to sudo 
read -p "add normaluser name:" username

adduser $username
adduser $username sudo

