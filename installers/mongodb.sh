#!/bin/bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org

sudo mkdir -p /var/lib/mongodb
sudo chown -R mongodb:mongodb /var/lib/mongodb
sudo service mongod start

echo "*********************************************************************
 The package configures MongoDB using the /etc/mongod.conf file
 in conjunction with the control scripts. See
 http://dochub.mongodb.org/core/startingandstoppingmongo and
 http://docs.mongodb.org/manual/reference/configuration-options/#storage.dbPath"
echo "*********************************************************************"