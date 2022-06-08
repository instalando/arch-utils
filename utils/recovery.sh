#!/bin/bash

chmod +x ${pwd}*

./save-pkgs.sh

pacman -Sc --noconfirm
pacman -D --asdeps $(pacman -Qqe)
pacman -D --asexplicit base base-devel linux linux-headers
pacman -Qtdq | pacman -Rns - --noconfirm

./recovery-pkg.sh