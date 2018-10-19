#!/bin/sh

sudo docker run -it --rm --workdir=/target/src -v $PWD:/target/src extbuilder ./build-inner.sh
