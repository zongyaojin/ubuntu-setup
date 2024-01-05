#!/bin/bash
set -e

# Update and upgrade apt before doing anything
sudo apt update -y
sudo apt upgrade -y

# Install drivers
sudo ubuntu-drivers install

# Nvidia graphics reminders
echo -e "========== zj-drivers-install =========="
echo -e "Reboot if new drivers are installed."
echo -e "If NVIDIA drivers do not work on a Linux Thinkpad, try the following in Thinkpad boot menu:"
echo -e "---- [Security] > [Secure Boot] > [Secure Boot], switch to [off]"
echo -e "Otherwise, it prevents NVIDIA driver from loading at boot time."
echo -e "========== zj-drivers-install =========="
