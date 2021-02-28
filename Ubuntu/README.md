# Ubuntu-Configs

Contains configs and theme exports of my Ubuntu machine.

--------------------------
## Updating Ubuntu Version 
1. Open the **Software & Updates** Setting in System Settings.
2. Select the 3rd Tab called **Updates**.
3. Set the **Notify me of a new Ubuntu version** drop down menu to **For any new version**.
4. Press <kbd>Alt+F2</kbd> and type ```update-manager -c``` into the command box.
5. Update Manager should open up and tell you that newer version of Ubuntu is now available.
6. If not, you can run  ```/usr/lib/ubuntu-release-upgrader/check-new-release-gtk```
7. Click Upgrade and follow the on-screen instructions.

## Update NVIDIA Drivers 
1. To check if NVIDIA drivers are installed run ```nvidia-smi``` in terminal.
2. To check if in Ubuntu NVIDIA drivers are using their latest version follow this:
  * From **Show applications** open **NVIDIA x server settings**.
  * In *PRIME Profiles* select **Intel(Power Saving Mode)** and restart the desktop.
  * Now detect the model of your nvidia graphic card and the recommended driver. To do so execute ```ubuntu-drivers devices```
  * To install the recommended driver version run ```sudo ubuntu-drivers autoinstall``` or to install a specific one execute *sudo apt install nvidia-(version number without parenthesis)* like ```sudo apt install nvidia-435```
  * After that select back **Nvidia On-Demand** from *PRIME Profiles* and restart the desktop.