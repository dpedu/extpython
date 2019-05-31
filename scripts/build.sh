#!/bin/bash -eux

. /tmp/vars.sh

function template {
    perl -p -e 's/\$\{([^}]+)\}/defined $ENV{$1} ? $ENV{$1} : $&/eg' < $1
}

# create build dir
cd /build
mkdir work
cd work

# get cpython source
mkdir cpython
wget -qO- cpython.tar.gz $PYTHON_TARBALL | tar zxf - -C cpython/ --strip-components=1

# get debian metadata
# todo generate the metadata here
# cp -r /src/debian /src/Makefile ./
mkdir debian
export BUILD_DATE=$(date -R)
template /src/debian/changelog | tee debian/changelog
template /src/debian/control | tee debian/control
cp /src/debian/compat debian/
cp /src/debian/rules debian/
cp /src/Makefile ./
sed -i -E "s/_OPT_DIR_/${PYTHON_MAJOR}/" Makefile

# build the deb
time dpkg-buildpackage -us -uc -b

cd ..
mkdir out
mv *.buildinfo *.changes *.deb out/
cd out
sha256sum *
