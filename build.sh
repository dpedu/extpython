#!/bin/bash -eux

VARSFILE=$1

ls -la src/$VARSFILE

time docker run -it --rm -e "VARSFILE=$VARSFILE" -v $PWD/src:/src extpythonbuilder
