#!/bin/bash
sudo apt-get update
sudo apt-get install -y nodejs npm nodejs-legacy

npm_tmp=~/.tmp
mkdir ${npm_tmp}
sleep 0.05s # Hack
bash ../helpers/add-permissions.sh ${npm_tmp}
npm config set tmp ${npm_tmp}
# sudo ln -s '/usr/bin/nodejs' '/usr/local/bin/node' # or install nodejs-legacy