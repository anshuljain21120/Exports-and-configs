# Ubuntu-Configs
Contains configs and theme exports of my Ubuntu machine.

--------------------------
## Setting Anaconda 
* The ```Set_anaconda.sh``` shell script can be run instantly after executing __Anaconda bash installation script__ (which can be found [here](https://docs.anaconda.com/anaconda/install/linux/) or [here](https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart)) to setup Deep Learning library supported environments with CUDA support however it requires these two things: 
1. It requires Ubuntu version greater than 16.04. To update ubuntu version on a desktop:
  * Open the **Software & Updates** Setting in System Settings.
  * Select the 3rd Tab called **Updates**.
  * Set the **Notify me of a new Ubuntu version** drop down menu to **For any new version**.
  * Press <kbd>Alt+F2</kbd> and type ```update-manager -c``` into the command box.
  * Update Manager should open up and tell you that newer version of Ubuntu is now available.
  * If not, you can run  ```/usr/lib/ubuntu-release-upgrader/check-new-release-gtk```
  * Click Upgrade and follow the on-screen instructions. 
2. It requires that NVIDIA drivers are installed successfully in the system. 
  * To check if NVIDIA drivers are installed run ```nvidia-smi``` in terminal.
  * To check if in Ubuntu NVIDIA drivers are using their latest version follow this:
    * From **Show applications** open **NVIDIA x server settings**.
    * In *PRIME Profiles* select **Intel(Power Saving Mode)** and restart the desktop.
    * Now detect the model of your nvidia graphic card and the recommended driver. To do so execute ```ubuntu-drivers devices```
    * To install the recommended driver version run ```sudo ubuntu-drivers autoinstall``` or to install a specific one execute *sudo apt install nvidia-(version number without parenthesis)* like ```sudo apt install nvidia-435```
    * After that select back **Nvidia On-Demand** from *PRIME Profiles* and restart the desktop.
    
    
Atlast, to confirm if CUDA setup is successfull in Anaconda run ```conda activate base && numba -s``` 

### Managing environments
* To update __conda__ for all the conda environments sequentially, type:

  ```for e in `conda env list | awk '$1 !="#"'| awk '{print $1}'`; do conda update -n $e conda -y; done```
  in terminal.
* To update __all packages__ for all the environments sequentially, type:

  ```for e in `conda env list | awk '$1 !="#"'| awk '{print $1}'`; do conda update -n $e --all -y; done```
  in terminal.

---------------------------
## GNU Terminal theme profile 
1. Read How to Import/Export terminal theme profile [here](https://gist.github.com/reavon/0bbe99150810baa5623e5f601aa93afc). 

----------------------------
## Dash to Panel 
#### [[source](https://github.com/home-sweet-gnome/dash-to-panel)]
1. First install [GNOME Shell Extension]. For which follow this:
 * Add Gnome.org extension in Firefox browser from [here.](https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/)
 * Then Open a terminal and run ```sudo apt install chrome-gnome-shell```

2. Then install Dash to Panel from [here.](https://extensions.gnome.org/extension/1160/dash-to-panel/)

---------------------------
## Geckodriver
1. First copy latest Geckodriver ```.tar.gz``` file URL from [here.](https://github.com/mozilla/geckodriver/releases/latest)
2. Then run this to extract it in "/usr/bin" directory ```sudo sh -c 'tar -x geckodriver -zf (Tar File Name with extension & without parenthesis) -O > /usr/bin/geckodriver'```
3. Next run to change access permission of extracted directory to execution mode```sudo chmod +x /usr/bin/geckodriver```
4. Atlast remove the downloaded tarball. ```rm (Tar File Name with extension & without parenthesis)```

---------------------------
## Force new resolution in Ubuntu
1. Download **Set_new_resolution.sh** & run ```bash Set_new_resolution.sh``` in terminal.
2. Enter new resolution separating dimensions by single space (like ```1920 1080```) and hit <kbd>enter</kbd> . 
3. Follow the on-screen instructions.
