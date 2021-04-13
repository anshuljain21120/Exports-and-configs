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

---------------------------
### Extras
* To load some default setups whenever you start a Jupyter notebook you can create your customised "profile(s)" for Ipython. With profiles you can pre-cook a lot of setups like:
  * Setting a profile which automatically does `import *` from **numpy**, **pandas** and **matplotlib**.
  * Loading magic commands, or not allowing any magic commands.
  * Turning off [Jedi](https://jedi.readthedocs.io/en/latest/) autocomplete for faster autocompletion in Jupyter Notebooks even for large datasets.
  * Avoid manually loading packages like [line_profiler](https://jakevdp.github.io/PythonDataScienceHandbook/01.07-timing-and-profiling.html#Line-By-Line-Profiling-with-%lprun) (An awesome profiler which shows how much cpu, memory, and other resources were used in each line, you can use it to optimize code with Numba). 

  So to create a IPython profile run `ipython profile create [profilename]` in a conda environment. If you leave out the profile name, the files will be created for the default profile (see [Profiles](https://ipython.org/ipython-doc/stable/config/intro.html#profiles)). Now just go and open `ipython_config.py` in your **[profilename]** folder in `~/.ipython` (The default profile resides in `~/.ipython/profile_default/`). In this file you can uncomment and use a lot of functionalities. For more info do checkout [Introduction to IPython Configuration](https://ipython.org/ipython-doc/stable/config/intro.html).
