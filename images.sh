#!/bin/bash -ex

RELEASES="trusty xenial bionic" # disco"

for release in $RELEASES ; do
    docker build -t extbuilder-${release} -f Dockerfile.${release} .
done
