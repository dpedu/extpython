#!/bin/bash

# get metadata
cd /src
. vars.sh

# install deps
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y $CPYTHON_DEPS

# run the build
sudo -Hu builder /build.sh

# export the debs
OUTDIR="/src/out/$PYTHON_RELEASE/"
mkdir -p $OUTDIR
cp /build/out/* $OUTDIR
