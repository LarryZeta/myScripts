#!/bin/bash

# change source
# https://github.com/oooldking/script

read -p "Whether to change the source? [Y/n]" varify

if [ $varify = 'y' ]||[ $varify = 'Y' ]; then
echo "Please select fastly(default), cn, 163 or aliyun."
read source
wget    git.io/superupdate.sh
bash    superupdate.sh $source
rm      superupdate.sh
fi


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
