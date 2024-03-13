#!/bin/bash
set -e

echo -e "[google-chrome]" \
    "https://www.google.com/chrome/"

echo -e "[google-pinyin]" \
    "https://leimao.github.io/blog/Ubuntu-Gaming-Chinese-Input/"

echo -e "[ROS-2]" \
    "https://docs.ros.org/en/humble/ \n" \
    "https://control.ros.org/humble/index.html \n"

echo -e "[pcloud]" \
    "https://www.pcloud.com/download-free-online-cloud-file-storage.html \n" \
    "\tMove to bin -> 
     \t   sudo mv ~/Downloads/pcloud /usr/local/bin\n" \
    "\tChange mode -> 
     \t   sudo chmod +x /usr/local/bin/pcloud\n"

echo -e "[smplayer]" \
    "https://www.smplayer.info/en/downloads \n" \
    "\tOptions -> Preferences -> Advanced -> Repaint the background of the video window > [uncheck]\n" \
    "\tEdit control bar -> add [Display time]\n" \
    "\tOptions -> Preferences -> Interface -> GUI: [Mini GUI], Icon set: [Dark]\n"

echo -e "[vs-code]" \
    "https://code.visualstudio.com/download \n" \
    "\tLog in and sync settings to get everything setup\n" \
    "\tFiles -> Preferences -> Settings -> Title Bar Style -> custom\n"

echo -e "[proxychains]" \
    "https://blog.csdn.net/weixin_44120025/article/details/114936141 \n" \
    "\t$ sudo apt install proxychains\n" \
    "\t$ sudo gedit /etc/proxychains.conf\n" \
    "\t> Last section add: <PROXY_TYPE> <HOST_IP> <PORT_NUMBER>\n" \
    "\t> Verify settings: $ proxychains curl cip.cc\n" \
    "\t> Usage example: $ proxychains ping google.com\n" \
    "\t> Usage example: $ sudo proxychains apt update\n" \
    "\t> See also: https://stackoverflow.com/a/68466096\n"
