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
setfacl -m "default:user::rwx" ${path}
setfacl -m "default:user:$user:rwx" ${path}
setfacl -m "default:group::r-x" ${path}
setfacl -m "default:group:${usergroup}:r-x" ${path}
setfacl -m "default:other::---" ${path}
setfacl -m "default:mask::rwx" ${path}

# User ACL section
setfacl -m "u:$user:rwx" ${path}
setfacl -m "g:${usergroup}:r-x" ${path}
setfacl -m "other::---" ${path}
setfacl -m "mask::rwx" ${path}

