#!/bin/bash
set -e
echo

echo -e "[Google Chrome] \n" \
    "\t https://www.google.com/chrome/ \n"

echo -e "[Google Pinyin] \n" \
    "\t https://leimao.github.io/blog/Ubuntu-Gaming-Chinese-Input/ \n"

echo -e "[ROS 2 Humble] \n" \
    "\t https://docs.ros.org/en/humble/ \n" \
    "\t https://control.ros.org/humble/index.html \n" \
    "\t https://control.ros.org/humble/doc/ros2_control/controller_manager/doc/userdoc.html#determinism \n"

echo -e "[Ubuntu 22.04 Realtime Kernel] \n" \
    "\t https://ubuntu.com/blog/real-time-ubuntu-released \n" \
    "\t https://discourse.ubuntu.com/t/enable-real-time-ubuntu-22-04-lts-beta-kernel/28189 \n" \
    "\t https://askubuntu.com/a/1502807 \n"

echo -e "[pCloud] \n" \
    "\t https://www.pcloud.com/download-free-online-cloud-file-storage.html \n" \
    "\t Move to bin -> 
     \t   sudo mv ~/Downloads/pcloud /usr/local/bin\n" \
    "\t Change mode -> 
     \t   sudo chmod +x /usr/local/bin/pcloud\n"

echo -e "[SMPlayer] \n" \
    "\t https://www.smplayer.info/en/downloads \n" \
    "\t Options -> Preferences -> Advanced -> Repaint the background of the video window > [uncheck]\n" \
    "\t Edit control bar -> add [Display time]\n" \
    "\t Options -> Preferences -> Interface -> GUI: [Mini GUI], Icon set: [Dark]\n"

echo -e "[Visual Studio Code] \n" \
    "\t https://code.visualstudio.com/download \n" \
    "\t Log in and sync settings to get everything setup\n" \
    "\t Files -> Preferences -> Settings -> Title Bar Style -> custom\n"

echo -e "[ProxyChains] \n" \
    "\t https://blog.csdn.net/weixin_44120025/article/details/114936141 \n" \
    "\t $ sudo apt install proxychains\n" \
    "\t $ sudo gedit /etc/proxychains.conf\n" \
    "\t > Last section add: <PROXY_TYPE> <HOST_IP> <PORT_NUMBER>\n" \
    "\t > Verify settings: $ proxychains curl cip.cc\n" \
    "\t > Usage example: $ proxychains ping google.com\n" \
    "\t > Usage example: $ sudo proxychains apt update\n" \
    "\t > See also: https://stackoverflow.com/a/68466096\n"
