#!/bin/bash

chmod +x ${pwd}*

./save-pkgs.sh

pacman -Sc --noconfirm
pacman -R $(pacman -Qq | grep -ve "$(pacman -Qqg base)" -ve "$(pacman -Qqg base-devel)") --noconfirm

./recovery-pkg.sh