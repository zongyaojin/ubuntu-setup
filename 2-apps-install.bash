#!/bin/bash
set -e

# Update and upgrade apt before doing anything
sudo apt update -y
sudo apt upgrade -y

# Ubuntu essential tools
ubuntu_essentials="
git gitk terminator simplescreenrecorder curl wget \
texlive-extra-utils texlive-latex-extra krop \
solaar solaar-gnome3 \
fcitx-bin fcitx-googlepinyin \
gnome-tweaks gnome-shell-extensions chrome-gnome-shell \
ffmpeg \
"

# C+ and CMake essential tools
cpp_cmake_essentials="
build-essential pkg-config clang-format \
cmake cmake-gui ccache \
autoconf libtool \
cppcheck cppcheck-gui  \
doxygen doxygen-latex doxygen-doc doxygen-gui graphviz \
"

# Install Ubuntu, C++, CMake essential tools
sudo apt install -y $ubuntu_essentials $cpp_cmake_essentials

# Configure git
git config --global user.email "zongyaojin@outlook.com"
git config --global user.name "Zongyao Jin"
git config --global credential.helper cache
git config --global pull.rebase false

# Install and update pip
sudo apt install -y python3-pip
pip install --upgrade --user pip setuptools

# Python essentials
python_essentials="
virtualenv black isort \
scipy pandas matplotlib jupyter \
cmakelang \
"

# Install Python essentials
pip install --user $python_essentials

# Show git global configuration and memo for pddjam command.
echo -e "========== zj-apps-install =========="
git config --list --global
echo -e "========== zj-apps-install =========="
echo -e "Memo for pdfjam command (comes with texlive-extra-utils):"
echo -e "  $ pdfjam file.pdf --nup 2x2 --paper letterpaper --column true --delta '5 5' --scale 0.9"
echo -e "========== zj-apps-install =========="
