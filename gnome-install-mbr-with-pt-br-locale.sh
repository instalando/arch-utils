#!/bin/bash

chmod +x scripts/install-system-base.sh
chmod +x scripts/grub-mbr.sh
chmod +x scripts/install-gnome.sh
chmod +x scripts/locale-pt-br.sh
chmod +x scripts/create-default-user.sh
chmod +x scripts/updade-system.sh

./scripts/install-system-base.sh

# Gen FSTAB
genfstab -U /mnt >> /mnt/etc/fstab

# grub ~ mbr
./grub-mbr.sh

# Update system
./scripts/updade-system.sh

# update sudoers
arch-chroot /mnt "%wheel ALL=(ALL:ALL) ALL" > /mnt/etc/sudoers

# Install Gnome Base
./scripts/install-gnome.sh

# set defaullt user
./scripts/create-default-user.sh

# Set locale pt-br
./scripts/locale-pt-br.sh
