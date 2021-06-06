# MacOS-Configs/Set bash-autocomplete
These settings allow you to use tab completion while working with bash shell.
#### [[source](https://itnext.io/programmable-completion-for-bash-on-macos-f81a0103080b)] | [credits: [Daniel Weibel](https://medium.com/@weibeld)]

--------------------
## Install bash-autocomplete
* We will be installing bash-autocomplete with Homebrew in MacOS beacuse of many obvious reasons. If you don't have Homebrew installed, then first [install Homebrew.](https://github.com/anshuljain21120/Exports-and-configs/blob/master/MacOS/README.md#install-homebrew)
* Now, there are two categories of this, depending on your bash version (bash version can be found by running `bash --version`) 
  * **For Bash version <= 4.0** : Type ```brew install bash-completion```
  * **For Bash version >= 4.1** : Type ```brew install bash-completion@2```
* To complete the installation follow the output of brew install command. 
> Generally it will tell you to add below line in your `.bash_profile`:
> ```bash
> [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
> ```


For detailed info on bash-autocompletion checkout the article provided in the source.
