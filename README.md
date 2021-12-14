# Machine Learning Repositories

This repo contains all the installed machine- and deep learning algorithms you can find at the Interaction Station. Every repo contains a Anaconda environment file with which you can install the required libraries and packages. You can use ```install.sh``` To install every submodule repo.

## install.sh
### Install everything!
You can use the following commands in the root of this repo to install every submodule repo

Make sure the shell script is executable:
```
chmod +x ./install.sh
```

Run the script!
```
./install.sh
```

## Anaconda
### Installing Anaconda environment
Installing the submodule repo environments manually:
```
conda env create -f /path/to/env/yml
```
e.g:
```
conda env create -f stylegan2.yml
```

### Activating Anaconda environment
```
conda activate name_of_environment
```
e.g:
```
conda activate stylegan2
```

### Show available environment on the machine
```
conda info --envs
```
