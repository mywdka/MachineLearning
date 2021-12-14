#!/bin/bash

helpFunction()
{
  echo ""
  echo "Usage: $0 -f folder"
  echo -e "\t-f Folder where the repositories should be installed. e.g. ~/MachineLearning"
  exit 1
}

while getopts "f:" opt
do
  case "$opt" in
    f ) folder="$OPTARG" ;;
    ? ) helpFunction ;; # print help function in case parameter is non-existent
  esac
done

# print helpFunction in case parameters are empty
if [ -z  "$folder" ]
then
  echo "The required install location parameter is empty"
  helpFunction
fi

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
  cd ../
done






# # clone git
# git clone https://github.com/kcosta42/VQGAN-CLIP-Docker.git $folder/VQGAN_CLIP-Docker

# # setup conda env
# wget -O ~/enviornment.yml https://gist.githubusercontent.com/devwearsprada/d8f89217083bd856deb8b4ceb237c4c0/raw/c7b458bd1c2beffe29c79f007f21dde65725c8bd/enviornment.yml
# conda env create -f ~/enviornment.yml

# # download model
# wget -O $folder/VQGAN_CLIP-Docker/models/vqgan_imagenet_f16_16384.ckpt http://transfer.sh/jyCNPR/vqgan_imagenet_f16_16384.ckpt

# # clean up
# rm -rf ~/enviornment.yml

# echo "[DONE]"
# echo -e "\tProject is installed at: $folder/VQGAN_CLIP-Docker/"
