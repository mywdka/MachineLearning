#!/bin/bash

# env folder
DIR=envs/*.yaml
# clone submobdules
git submodule update --init

for FILE in $DIR
do
  # begin script if required parameters are present
  echo "[INFO]: Installing ${FILE}"
  # create conda env
  conda env create -f $FILE
done

echo "[INFO]: Done installing submodules & environments"
