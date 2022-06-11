#!/bin/bash

pacman -S lightdm lightdm-gtk-greeter --noconfirm
echo "greeter-session=lightdm-gtk-greeter" >> /etc/lightdm/lightdm.conf
systemctl enable lightdm
