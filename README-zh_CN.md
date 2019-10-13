# myScripts

## [newDebian.sh](./newDebian.sh)  

- 选择是否换源。
- 更新 apt 列表。
- 安装 sudo git zsh curl neovim socat neofetch acme.sh。
- 创建普通用户并添加到 sudo 组。

## [user.sh](./user.sh)

- 安装 oh-my-zsh。
- 安装 Spaceship ZSH, zsh-autosuggestions, zsh-syntax-highlighting。

## [Get-Nginx-for-Debian.sh](./Get-Nginx-for-Debian.sh)

根据[官方文档](http://nginx.org/en/linux_packages.html#Debian)安装 nginx（添加官方源的方式）。

## [Get-Docker-CE-for-Debian.sh](./Get-Docker-CE-for-Debian.sh)

根据[官方文档](https://docs.docker.com/install/linux/docker-ce/debian/)安装 DockerCE（添加官方源的方式）。

## 用法

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
