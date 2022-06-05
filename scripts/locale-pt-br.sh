#!/bin/bash

# Set locale pt-br
arch-chroot /mnt echo "pt_BR.UTF-8 UTF-8" >> /etc/locale.gen &&
arch-chroot /mnt echo "LANG=pt_BR.UTF-8" >> /etc/locale.conf &&
arch-chroot /mnt echo "KEYMAP=br-abnt2" >> /etc/vconsole.conf &&
arch-chroot /mnt locale-gen &&
arch-chroot /mnt ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime &&
arch-chroot /mnt timedatectl set-ntp true &&
arch-chroot /mnt hwclock --systohc
