#!/bin/bash

pacman -S --needed - < ../pkgs-list/pkglist.txt

pacman -S git --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

yay -S < ./pkgs-list/aur-pkglist.txt