#!/bin/bash

# http://nginx.org/en/linux_packages.html#Debian

# Install the prerequisites:

sudo apt install curl gnupg2 ca-certificates lsb-release


echo "Would you like to install stable or mainline nginx packages?"
echo "0. stable(default)"
echo "1. mainline"

read version

if [ -z $varsion ]||[ $varsion = '0' ]; then
# To set up the apt repository for stable nginx packages, run the following command:
echo "deb http://nginx.org/packages/debian `lsb_release -cs` nginx" \
    | sudo tee /etc/apt/sources.list.d/nginx.list

elif [ $varsion = '1' ]; then
# If you would like to use mainline nginx packages, run the following command instead:
echo "deb http://nginx.org/packages/mainline/debian `lsb_release -cs` nginx" \
    | sudo tee /etc/apt/sources.list.d/nginx.list
fi

# Next, import an official nginx signing key so apt could verify the packages authenticity:

curl -fsSL https://nginx.org/keys/nginx_signing.key | sudo apt-key add -
# Verify that you now have the proper key:

echo "The output should contain the full fingerprint 573B FD6B 3D8F BC64 1079 A6AB ABF5 BD82 7BD9 BF62"
sudo apt-key fingerprint ABF5BD827BD9BF62

read -p "Is is correct? [Y/n]" varify

# pub   rsa2048 2011-08-19 [SC] [expires: 2024-06-14]
#      573B FD6B 3D8F BC64 1079  A6AB ABF5 BD82 7BD9 BF62
# uid   [ unknown] nginx signing key <signing-key@nginx.com>
# To install nginx, run the following commands:

if [ $varify = 'y' ]||[ $varify = 'Y' ]; then
sudo apt update
sudo apt install nginx
else
echo "Abort."
exit 1
fi