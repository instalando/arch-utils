#!/bin/bash

# set defaullt user
useradd -m archlinux
usermod -aG wheel,audio,video,storage archlinux