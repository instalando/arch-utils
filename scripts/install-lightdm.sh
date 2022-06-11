#!/bin/bash

pacman -S lightdm-gtk-greeter --noconfirm
systemctl enable lightdm
