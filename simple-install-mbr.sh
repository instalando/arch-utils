#!/bin/bash

pacstrap -i /mnt base base-devel linux linux-headers grub efibootmgr wget nano networkmanager

genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt grub-install /dev/sda
arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg