# ~/.*

![VirtualBox_Arch Linux_19_03_2022_18_18_29](https://user-images.githubusercontent.com/69778355/159200422-d6ecc4b4-59b7-45e5-8528-034e572eea76.png)

## Overview

This guide walks you through all the environment you need to implement these dotfiles on your Archlinux system. There's also a tutorial that shows how to install Archlinux of an easy way, you can read it [here](https://github.com/quispewilmer/dotfiles/wiki/How-to-install-Archlinux). I'll just show you the steps you have to follow and don't panic, there's not too much complex abbreviations or concepts, I'll write as simple as I can do. So don't be shy, don't panic, and enjoy :blush:

## Before `git clone`

Obviously before clonning this repository you have to install git first, but in addition, there are additional packages to get. Keep in mind that in this section you have to execute each command as root user

1. Install `sudo`, `git` and `openssh`

``` bash
pacman -S sudo git openssh
```

2. Edit the `/etc/sudoers` file

``` bash
vim /etc/sudoers
```

3. Find the User privilege specification section and below root add a privilege to your user e.g. my user is `wilmer`

![VirtualBox_Arch Linux 2_20_03_2022_22_09_03](https://user-images.githubusercontent.com/69778355/159200369-ed2cca42-81d5-4aa0-8616-612a13fa6628.png)

4. Once you do this, return to your personal user and go to `~/` directory

``` bash
cd ~/
```

5. Remove all the files of your home directory and clone this repository

``` bash
rm -rfv {*,.*}
git clone https://github.com/quispewilmer/dotfiles.git
```

6. Install all the packages in .pkgs file

``` bash
pacman -S --needed - < .pkgs
```

7. Install yay AUR

```
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```
