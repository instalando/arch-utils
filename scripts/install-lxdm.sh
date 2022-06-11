#!/bin/bash

pacman -S lxdm --noconfirm
systemctl enable lxdm
