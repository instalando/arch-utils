#!/bin/bash

pacman -S lightdm lightdm-gtk-greeter xorg xorg-server --noconfirm
echo "greeter-session=lightdm-gtk-greeter" >> /etc/lightdm/lightdm.conf
systemctl enable lightdm
