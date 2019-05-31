#!/bin/bash -eux

export EXTPYTHON_DIST=bionic
export PYTHON_RELEASE=2.7.16
export PYTHON_MAJOR=2.7
export PYTHON_TARBALL="http://artifact.scc.net.davepedu.com/repo/tar/cpython/cpython/cpython-${PYTHON_RELEASE}.tar.gz"
export CPYTHON_DEPS="libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev \
    libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev"
