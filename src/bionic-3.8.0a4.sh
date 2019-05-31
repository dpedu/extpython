#!/bin/bash -eux

export PYTHON_RELEASE=3.8.0a4
export PYTHON_MAJOR=3.8.0a4
# export PYTHON_TARBALL="https://github.com/python/cpython/archive/v${PYTHON_RELEASE}.tar.gz"
export PYTHON_TARBALL="http://artifact.scc.net.davepedu.com/repo/tar/cpython/cpython/cpython-${PYTHON_RELEASE}.tar.gz"
export CPYTHON_DEPS="libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev \
    libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev"
