#!/bin/bash

# set defaullt user
arch-chroot /mnt useradd -m archlinux
arch-chroot /mnt usermod -aG wheel,audio,video,storage archlinux