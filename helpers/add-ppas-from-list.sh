#!/bin/bash

PPAS="../config/ppas";
declare -a repositories;
repositories=( `cat "$PPAS"`);

for ppa in ${repositories[@]}; do
    sudo add-apt-repository -y ${ppa} && echo Add ${ppa} done
done
sudo apt-get update
