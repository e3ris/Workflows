#!/bin/bash

folder="moiapp"

git clone $1 $folder
docker build $folder --rm --force-rm -t xyimage

if [ -f $folder/pyscript.py ]
then
  echo 'Executing: pyscript.py ...'
  cd $folder && python pyscript.py &
else
  rm -rf $folder
fi

docker run --privileged --rm -i xyimage
