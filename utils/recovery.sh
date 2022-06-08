#!/bin/bash

chmod +x ${pwd}*

./save-pkgs.sh

pacman -Sc --noconfirm
pacman -D --asdeps $(pacman -Qqe)
pacman -D --asexplicit base linux linux-firmware
pacman -Qtdq | pacman -Rns - --noconfirm

./recovery-pkg.sh