#!/bin/bash

pacman -S reflector --noconfirm
reflector -c Brazil > /etc/pacman.d/mirrorlist
pacman -Syu linux linux-headers grub efibootmgr wget nano networkmanager --noconfirm

systemctl enable NetworkManager