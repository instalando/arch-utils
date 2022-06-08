#!/bin/bash

chmod +x ${pwd}*

./save-pkgs.sh

pacman -D --asdeps $(pacman -Qqe)
pacman -D --asexplicit base base-devel linux linux-headers
pacman -Qtdq | pacman -Rns - --noconfirm

pacman -Sc --noconfirm

./recovery-pkg.sh