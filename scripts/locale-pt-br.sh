#!/bin/bash

# Set locale pt-br
echo "pt_BR.UTF-8 UTF-8" >> /etc/locale.gen &&
echo "LANG=pt_BR.UTF-8" >> /etc/locale.conf &&
echo "KEYMAP=br-abnt2" >> /etc/vconsole.conf &&
locale-gen &&
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime &&
timedatectl set-ntp true &&
hwclock --systohc
