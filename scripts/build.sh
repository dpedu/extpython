#!/bin/bash

. /src/vars.sh

# create build dir
cd /build
mkdir work
cd work

# get cpython source
mkdir cpython
wget -qO- cpython.tar.gz $PYTHON_TARBALL | tar zxf - -C cpython/ --strip-components=1

# get debian metadata
# todo generate the metadata here
cp -r /src/debian /src/Makefile ./

# build the deb
time dpkg-buildpackage -us -uc -b

cd ..
mkdir out
mv *.buildinfo *.changes *.deb out/
cd out
sha256sum *
