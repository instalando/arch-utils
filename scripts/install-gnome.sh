#!/bin/bash

pacman -S gdm gnome gnome-extra gnome-tweaks gnome-themes-extra --noconfirm
systemctl enable NetworkManager
systemctl enable gdm
