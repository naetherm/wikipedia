#!/bin/bash

# Adapted from the implementation of Niklas Schnelle

DATE="$(date --iso)"
VERSION_FOLDER="$DATE"

if [ ! -d $DATE ]
then
    mkdir "$VERSION_FOLDER"
    pushd "$VERSION_FOLDER"
    wget --timestamping -i ../urllist.txt
    popd
    cd ..
fi

if [ -L latest ]
then
    unlink latest
fi
ln -s $DATE latest