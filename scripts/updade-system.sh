#!/bin/bash

# Update system
arch-chroot /mnt pacman -S reflector --noconfirm
arch-chroot /mnt reflector -c Brazil > /mnt/etc/pacman.d/mirrorlist
arch-chroot /mnt pacman -Syu