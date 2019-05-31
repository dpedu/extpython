#!/bin/bash -eux

export EXTPYTHON_DIST=disco
export PYTHON_RELEASE=3.7.3
export PYTHON_MAJOR=3.7
export PYTHON_TARBALL="http://artifact.scc.net.davepedu.com/repo/tar/cpython/cpython/cpython-${PYTHON_RELEASE}.tar.gz"
export CPYTHON_DEPS="libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev \
    libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev"
