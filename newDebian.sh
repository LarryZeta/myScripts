#!/bin/sh

# change source
# https://github.com/oooldking/script
wget    git.io/superupdate.sh
bash    superupdate.sh
rm      superupdate.sh

# update apt
apt update
apt upgrade -y

# install some packages
apt install sudo git zsh curl neovim socat neofetch -y

# install acme.sh
curl  https://get.acme.sh | sh

# add normal user to sudo 
read -p "add normaluser name:" username

adduser $username
adduser $username sudo
