#!/bin/bash

cd ~

echo "install gparted"

sudo apt-get install gparted
sudo apt-get update

echo "complete"

echo "install vlc"

sudo apt update
sudo apt install vlc

echo "vlc installation complete"

echo "install chrome; add key"

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 

echo "set repo"

sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

echo "install and update"

sudo apt-get update 
sudo apt-get install google-chrome-stable

echo "chrome complete"

