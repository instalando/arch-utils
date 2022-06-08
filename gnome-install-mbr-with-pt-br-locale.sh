#!/bin/bash

./scripts/install-system-base.sh

# grub ~ mbr
./scripts/grub-mbr.sh

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
