#!/bin/bash

sudo mkdir '/data'
sleep 0.05s # Hack
sudo mkdir '/data/db'
sleep 0.05s # Hack

bash ../helpers/add-permissions.sh '/data'
bash ../helpers/add-permissions.sh '/data/db'

