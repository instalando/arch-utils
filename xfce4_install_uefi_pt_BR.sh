#!/bin/bash

chmod +x ${pwd}scripts/*

./scripts/install-system-base.sh

# grub ~ uefi
./scripts/grub-uefi.sh

# Update system
./scripts/updade-system.sh

# update sudoers
arch-chroot /mnt "%wheel ALL=(ALL:ALL) ALL" > /mnt/etc/sudoers

# Install lightdm
./scripts/install-lightdm.sh

# Install xfce4 Base
./scripts/install-xfce4.sh

# set defaullt user
./scripts/create-default-user.sh

# Set locale pt-br
./scripts/locale-pt-br.sh

# Update sudoers
./scripts/sudoers.sh
