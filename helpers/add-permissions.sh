#!/bin/bash

if [ $2 ]
then
    user=$2
else
    user=$USER
fi

usergroup=`id -g -n ${user}`
path=$1
echo "User $user in group ${usergroup}. Target: ${path}"

# Default ACL section
sudo setfacl -R -m "default:user::rwx" ${path}
sudo setfacl -R -m "default:user:$user:rwx" ${path}
sudo setfacl -R -m "default:group::r-x" ${path}
sudo setfacl -R -m "default:group:${usergroup}:r-x" ${path}
sudo setfacl -R -m "default:other::---" ${path}
sudo setfacl -R -m "default:mask::rwx" ${path}

# User ACL section
sudo setfacl -R -m "u:$user:rwx" ${path}
sudo setfacl -R -m "g:${usergroup}:r-x" ${path}
sudo setfacl -R -m "other::---" ${path}
sudo setfacl -R -m "mask::rwx" ${path}

