# MacOS-Configs/Set git-autocomplete
These settings allow you to use tab completion while working with git.
#### [[source](https://stackoverflow.com/a/19876372)] | [credits: [jospratik](https://stackoverflow.com/users/2318712/jospratik), [Patrick Fisher](https://stackoverflow.com/users/161182/patrick-fisher)]

--------------------
## Install git-autocomplete
* Open a terminal and paste below line and hit <kbd>Enter</kbd>.
```bash 
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
```
* Then open `.bash_profile`(generally in your home folder) and add below text in it.
``` bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
```
