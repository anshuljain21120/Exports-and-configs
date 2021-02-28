# Ubuntu-Configs/Set Anaconda

This guide will help you to create and maintain CUDA compatible Conda environments. It also describes how to update Ubuntu version  

--------------------------
## Setting Anaconda 
* The ```Set_anaconda.sh``` shell script can be run instantly after executing __Anaconda bash installation script__ (which can be found [here](https://docs.anaconda.com/anaconda/install/linux/) or [here](https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart)) to setup Deep Learning library supported environments with CUDA support however it requires these two things: 
1. It requires Ubuntu version greater than 16.04. To update ubuntu version on a desktop see [this README.](https://github.com/anshuljain21120/Exports-and-configs/blob/add-psensor-config/Ubuntu/README.md)
2. It requires that NVIDIA drivers are installed successfully in the system. To check if NVIDIA drivers are installed and are using their latest version see [this README.](https://github.com/anshuljain21120/Exports-and-configs/blob/add-psensor-config/Ubuntu/README.md)     
3. Atlast, to confirm if CUDA setup is successfull in Anaconda run ```conda activate base && numba -s``` 

### Managing Environments
* To update __conda__ for all the conda environments sequentially, type: ```for e in `conda env list | awk '$1 !="#"'| awk '{print $1}'`; do conda update -n $e conda -y; done``` in terminal.
* To update __all packages__ for all the environments sequentially, type: ```for e in `conda env list | awk '$1 !="#"'| awk '{print $1}'`; do conda update -n $e --all -y; done``` in terminal.

