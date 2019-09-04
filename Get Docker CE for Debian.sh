#!/bin/sh

# https://docs.docker.com/install/linux/docker-ce/debian/

# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# 1.Update the apt package index:
sudo apt-get update

# 2.Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common -y

# 3.Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

echo "Verify that you now have the key with the fingerprint 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88"
sudo apt-key fingerprint 0EBFCD88
read -p "Is is correct? [Y/n]" varify

if [ $varify = 'y' ]||[ $varify = 'Y' ]; then
# 4.Use the following command to set up the stable repository.
# x86_64 / amd64
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# INSTALL DOCKER CE

# 1.Update the apt package index.
sudo apt-get update

# 2. Install the latest version of Docker CE and containerd, or go to the next step to install a specific version:
sudo apt install docker-ce docker-ce-cli containerd.io -y

else
echo "Abort."
exit 1
fi
