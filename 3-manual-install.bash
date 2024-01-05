#!/bin/bash
set -e

echo -e "[google-chrome]" \
    "https://www.google.com/chrome/"

echo -e "[google-pinyin]" \
    "https://leimao.github.io/blog/Ubuntu-Gaming-Chinese-Input/"

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
