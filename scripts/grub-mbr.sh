#!/bin/bash

# grub ~ mbr
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg