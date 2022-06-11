#!/bin/bash

pacman -S mesa lightdm-gtk-greeter xorg --noconfirm
systemctl enable lightdm
