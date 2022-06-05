#!/bin/bash

pacstrap -i /mnt base base-devel linux linux-headers grub efibootmgr wget nano networkmanager

genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi
arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg