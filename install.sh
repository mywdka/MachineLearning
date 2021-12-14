#!/bin/bash

# get repositories
dirs=(*/)
# clone submobdules
git submodule update --init

for dir in "${dirs[@]}"
do
  # begin script if required parameters are present
  echo "[INFO]: Installing ${dir%/} in: $folder"
  cd $dir
  # install anaconda environment
  env=$(find . -type f -name "*.yml")
  conda env create -f $env
  # return to parent directory
  cd ../
done

echo "[INFO]: Done installing submodules & environments"