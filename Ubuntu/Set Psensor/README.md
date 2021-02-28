# Ubuntu-Configs/Psensor

psensor is a graphical hardware temperature monitor for Linux.

Psensor-Graph   | Psensor-Dropdown
:-------------------------:|:-------------------------:
![Psensor-Graph](https://github.com/anshuljain21120/Exports-and-configs/blob/add-psensor-config/Ubuntu/Set%20Psensor/Psensor-graphs.png) | ![Psensor-Dropdown](https://github.com/anshuljain21120/Exports-and-configs/blob/add-psensor-config/Ubuntu/Set%20Psensor/Psensor-dropdown.png)
--------------------------
#### [[source](https://wpitchoune.net/psensor/)]

## Installation
1. Open a terminal.
2. Run `sudo apt-get install lm-sensors` to install [lm-sensors](https://en.wikipedia.org/wiki/Lm_sensors). 
3. Now to once and for all detect the sensors available in your system run `sudo sensors-detect` and follow the instructions.
4. To verify if its working just type `sensors` and hit <kbd>Enter</kbd>.
5. Finally install Psensor by running `sudo apt-get install psensor` .
