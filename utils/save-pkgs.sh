#!/bin/bash

pacman -Qqen > ../pkgs-list/pkglist.txt
pacman -Qqem > ../pkgs-list/aur-pkglist.txt