#!/bin/bash -eux

VARSFILE=$1

. src/$VARSFILE

time docker run -it --rm -e "VARSFILE=$VARSFILE" -v $PWD/src:/src extbuilder-$EXTPYTHON_DIST
