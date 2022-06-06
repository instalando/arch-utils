#!/bin/bash

# Update system
pacman -S reflector --noconfirm
reflector -c Brazil > /mnt/etc/pacman.d/mirrorlist
pacman -Syu