#!/bin/bash

# export PATH=$PATH:/usr/bin

time dpkg-buildpackage -us -uc -b

ls -la ../

mkdir -p ./out

mv ../*.buildinfo ../*.changes ../*.deb
