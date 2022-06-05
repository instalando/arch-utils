#!/bin/bash

chmod +x install-system-base.sh
./install-system-base.sh

# Gen FSTAB
genfstab -U /mnt >> /mnt/etc/fstab

# grub ~ mbr
chmod +x grub-mbr.sh
./grub-mbr.sh

# Update system
arch-chroot /mnt pacman -S reflector --noconfirm
arch-chroot /mnt reflector -c Brazil > /mnt/etc/pacman.d/mirrorlist
arch-chroot /mnt pacman -Syu

# update sudoers
arch-chroot /mnt "%wheel ALL=(ALL:ALL) ALL" > /mnt/etc/sudoers

# Install Gnome Base
chmod +x install-gnome.sh
./install-gnome.sh

# Set locale pt-br
chmod +x locale-pt-br.sh
./locale-pt-br.sh

# set defaullt user
chmod +x create-default-user.sh
./create-default-user.sh
