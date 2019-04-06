#!/bin/bash
BASEDIR=$(pwd -P)
chmod +x openconnect-launcher.sh
chmod +x credential-maker.sh
sudo apt-get install \
    build-essential gettext autoconf automake libproxy-dev \
    libxml2-dev libtool vpnc-scripts pkg-config \
    libgnutls28-dev git jq
cd /tmp
git clone https://github.com/dlenski/openconnect.git
cd openconnect
./autogen.sh
./configure
make
sudo make install && sudo ldconfig
clear
echo "openconnect successfully installed!"
cd $BASEDIR
sudo $BASEDIR/openconnect-launcher.sh
