#!/bin/bash

# grub ~ mbr
arch-chroot /mnt grub-install /dev/sda1
arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg