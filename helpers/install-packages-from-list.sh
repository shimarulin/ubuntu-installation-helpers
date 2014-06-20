#!/bin/bash

PACKAGES="../config/packages";
declare -a packages;
packages=( `cat "$PACKAGES"`);

sudo apt-get install -y ${packages[@]}
