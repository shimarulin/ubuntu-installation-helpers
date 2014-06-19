#!/bin/bash
. /etc/lsb-release
DIST=${DISTRIB_CODENAME}
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
echo 'deb http://download.virtualbox.org/virtualbox/debian ${DIST} contrib non-free' | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt-get update
sudo apt-get install virtualbox-4.3
