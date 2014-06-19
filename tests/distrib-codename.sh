#!/bin/bash
. /etc/lsb-release
DIST=${DISTRIB_CODENAME}
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart ${DIST} 10gen"
