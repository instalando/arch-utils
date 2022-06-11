#!/bin/bash

pacman -S gdm --noconfirm
systemctl enable gdm
