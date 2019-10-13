# myScripts

## [中文](./README-zh_CN.md)

### [newDebian.sh](./newDebian.sh)  

- Whether to change the source.
- Update apt list.
- Install sudo git zsh curl neovim socat neofetch acme.sh.
- Add normal user.

### [user.sh](./user.sh)

- Install oh-my-zsh.
- Install Spaceship ZSH, zsh-autosuggestions, zsh-syntax-highlighting.

### [Get-Nginx-for-Debian.sh](./Get-Nginx-for-Debian.sh)

Install according to [official documentation](http://nginx.org/en/linux_packages.html#Debian) (from source).

### [Get-Docker-CE-for-Debian.sh](./Get-Docker-CE-for-Debian.sh)

Install according to [official documentation](https://docs.docker.com/install/linux/docker-ce/debian/) (from source).

## Usage

```shell

wget https://raw.githubusercontent.com/LarryZeta/myScripts/master/newDebian.sh
bash newDebian.sh

wget https://raw.githubusercontent.com/LarryZeta/myScripts/master/user.sh
bash user.sh

wget https://raw.githubusercontent.com/LarryZeta/myScripts/master/Get-Nginx-for-Debian.sh
bash Get-Nginx-for-Debian.sh

wget https://raw.githubusercontent.com/LarryZeta/myScripts/master/Get-Docker-CE-for-Debian.sh
bash Get-Docker-CE-for-Debian.sh
```
