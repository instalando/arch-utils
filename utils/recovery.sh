#!/bin/bash

chmod +x ${pwd}*

./save-pkgs.sh

pacman -D --asdeps $(pacman -Qqe)
pacman -D --asexplicit base linux linux-firmware
pacman -S --needed - < ../pkgs-list/pkglist.txt

pacman -S git --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

yay -S < ./pkgs-list/aur-pkglist.txt