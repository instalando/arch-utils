#!/bin/bash

pacstrap -i /mnt base base-devel linux linux-headers grub efibootmgr wget nano networkmanager

# Gen FSTAB
genfstab -U /mnt >> /mnt/etc/fstab

# grub ~ mbr
arch-chroot /mnt grub-install /dev/sda1
arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg

# Update system
arch-chroot /mnt pacman -S reflector --noconfirm
arch-chroot /mnt reflector -c Brazil > /mnt/etc/pacman.d/mirrorlist
arch-chroot /mnt pacman -Syu

# update sudoers
arch-chroot /mnt "%wheel ALL=(ALL:ALL) ALL" > /mnt/etc/sudoers

# Install Gnome Base
arch-chroot /mnt pacman -S gdm gnome gnome-extra gnome-tweaks gnome-themes-extra --noconfirm
arch-chroot /mnt systemctl enable NetworkManager
arch-chroot /mnt systemctl enable gdm

# Set locale pt-br
arch-chroot /mnt echo "pt_BR.UTF-8 UTF-8" >> /etc/locale.gen &&
arch-chroot /mnt echo "LANG=pt_BR.UTF-8" >> /etc/locale.conf &&
arch-chroot /mnt echo "KEYMAP=br-abnt2" >> /etc/vconsole.conf &&
arch-chroot /mnt locale-gen &&
arch-chroot /mnt ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime &&
arch-chroot /mnt timedatectl set-ntp true &&
arch-chroot /mnt hwclock --systohc

# set defaullt user
useradd -m archlinux
usermod -aG wheel,audio,video,storage archlinux