#!/bin/bash

pacman -S lxdm --noconfirm
echo "session=/usr/bin/startxfce4" >> /etc/lxdm/lxdm.conf
systemctl enable lxdm
