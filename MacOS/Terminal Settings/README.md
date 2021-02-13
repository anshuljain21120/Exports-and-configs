# MacOS-Configs/Terminal Settings
These settings make terminal look like as shown:

Active Terminal           |  Inactive Terminal
:-------------------------:|:-------------------------:
![Active Terminal](https://github.com/anshuljain21120/Exports-and-configs/blob/master/MacOS/Terminal%20Settings/Terminal%20-%20Active.png)  |  ![Inactive Terminal](https://github.com/anshuljain21120/Exports-and-configs/blob/master/MacOS/Terminal%20Settings/Terminal%20-%20Inactive.png)

--------------------

## Set Bash as default shell 
* Head to System Preferences > Users & Groups on your Mac. Click the lock icon and enter your password. Hold the Ctrl key, click your user account’s name in the left pane, and select “Advanced Options.”
* Click the “Login Shell” dropdown box and select “/bin/bash” to use Bash as your default shell. Click “OK” to save your changes.
* Also make a `.bash_profile` file in home directory if its not present. You can do so by running ```cd ~; touch .bash_profile;``` in a terminal.
> **Bash on macOS Is Still Outdated** :- Note that the version of Bash (Bourne Again SHell) included with macOS is still pretty outdated. However if you run bash --version, you’ll see that Big Sur includes Bash 3.2.57 when Bash 5.0 is the latest version. Newer versions are licensed under the GPLv3 license, while Apple still distributes a version licensed under GPLv2.
>  * To suppress this deprecation warning in Mac add ```export BASH_SILENCE_DEPRECATION_WARNING=1``` line in .bash_profile file in your home directory.
>  * Although it hardly matters but if you want to use an updated Bash then follow along [this.](https://itnext.io/upgrading-bash-on-macos-7138bd1066ba)

## Set Color Theme
For this simply download the [Basic.terminal File](https://github.com/anshuljain21120/Exports-and-configs/blob/master/MacOS/Terminal%20Settings/Basic.terminal). Then either import it in *Profiles* Tab in terminal preferences of OSX or simply double click it.

## Set Prompt
For setting a prompt like shown above write ```export PS1="\[\e[38;5;166m\]\[\e[1m\]\u@\h\[\e[00m\]:\[\e[38;05;174m\]\w\[\e[00m\]\$ "``` in:
* Either in `.bash_profile` file present in your Home directory. **(Recommended)**
* Or in Terminal Preferences > Profiles Tab > Shell > Beside **Run Command** option after ticking on it. Also check Run inside shell option.

If you want a custom prompt, then design your custom type from [here](https://www.ibm.com/developerworks/linux/library/l-tip-prompt/) or [here.](https://misc.flogisoft.com/bash/tip_colors_and_formatting)
