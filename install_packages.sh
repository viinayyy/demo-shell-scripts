#!/bin/bash

<< info 
This Shell Script helps us to install
any packages if you pass arguments

eg. ./install_packages.sh nginx

./install_packages.sh docker.io
./install+packages.sh unzip
info

echo "Installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo " installation Completed"
