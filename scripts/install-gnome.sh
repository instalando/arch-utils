#!/bin/bash

arch-chroot /mnt pacman -S gdm gnome gnome-extra gnome-tweaks gnome-themes-extra --noconfirm
arch-chroot /mnt systemctl enable NetworkManager
arch-chroot /mnt systemctl enable gdm
