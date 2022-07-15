#!/bin/bash

git clone $1 moiapp
docker build moiapp --rm --force-rm -t xyimage
rm -rf moiapp
docker run --privileged --rm -i xyimage