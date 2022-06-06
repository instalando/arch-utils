#!/bin/bash

pacman -S reflector --noconfirm
reflector -c Brazil > /mnt/etc/pacman.d/mirrorlist
pacman -Syu linux linux-headers grub efibootmgr wget nano networkmanager --noconfirm