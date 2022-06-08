#!/bin/bash

chmod +x ${pwd}*

./save-pkgs.sh

pacman -D --asdeps $(pacman -Qqe)
pacman -D --asexplicit base linux linux-firmware

./recovery-pkg.sh