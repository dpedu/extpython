#!/bin/bash -eux

# Which dist to build on
export EXTPYTHON_DIST=xenial
# Release is used to select which tarball to download
export PYTHON_RELEASE=3.7.3
# Major version no is used in paths and labels (extpython-python${}, /opt/extpython/${}/...)
export PYTHON_MAJOR=3.7
# Tarball download URL
export PYTHON_TARBALL="http://artifact.scc.net.davepedu.com/repo/tar/cpython/cpython/cpython-${PYTHON_RELEASE}.tar.gz"
# Deps needed to build this package
export CPYTHON_DEPS="libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev \
    libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev"
