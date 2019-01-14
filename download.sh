#!/bin/bash

# Adapted from the implementation of Niklas Schnelle (/nfs/datasets/wikipedia_english_original/download.sh)

DATE="$(date --iso)"
VERSION_FOLDER="$DATE"
mkdir "$VERSION_FOLDER"
pushd "$VERSION_FOLDER"

wget --timestamping -i ../urllist.txt

popd