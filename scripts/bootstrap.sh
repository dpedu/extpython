#!/bin/bash -eux

# get metadata
ln -s /src/$VARSFILE /tmp/vars.sh
. /tmp/vars.sh
. /etc/lsb-release  #for DISTRIB_CODENAME

# install deps
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" $CPYTHON_DEPS

# run the build
sudo -Hu builder /build.sh

# export the debs
OUTDIR="/src/out/${PYTHON_RELEASE}/${DISTRIB_CODENAME}"
mkdir -p $OUTDIR
cp /build/out/* $OUTDIR
