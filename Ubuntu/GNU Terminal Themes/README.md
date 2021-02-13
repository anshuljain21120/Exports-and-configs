# Ubuntu/GNU Terminal Themes
These settings make terminal look like as shown:

Active Terminal           |  Inactive Terminal
:-------------------------:|:-------------------------:
![Active Terminal](https://github.com/anshuljain21120/Exports-and-configs/blob/master/Ubuntu/GNU%20Terminal%20Themes/Terminal%20-%20Active.png)  |  ![Inactive Terminal](https://github.com/anshuljain21120/Exports-and-configs/blob/master/Ubuntu/GNU%20Terminal%20Themes/Terminal%20-%20Inactive.png)

---------------------------
## GNU Terminal Theme Profiles
#### [[source]((https://gist.github.com/reavon/0bbe99150810baa5623e5f601aa93afc))] 

* To List all profiles type: ```dconf dump /org/gnome/terminal/legacy/profiles:/```

* For example we want to select this profile: 
```
[:1430663d-083b-4737-a7f5-8378cc8226d1]
foreground-color='#C3C3C7C7D1D1'
visible-name='Material Colors'
palette=['#070736364141', '#EBEB60606B6B', '#C3C3E8E88D8D', '#F7F7EBEB9595', '#8080CBCBC3C3', '#FFFF24249090', '#AEAEDDDDFFFF', '#FFFFFFFFFFFF', '#00002B2B3636', '#EBEB60606B6B', '#C3C3E8E88D8D', '#F7F7EBEB9595', '#7D7DC6C6BFBF', '#6C6C7171C3C3', '#343443434D4D', '#FFFFFFFFFFFF']
default-size-columns=100
default-size-rows=28
use-system-font=false
use-theme-colors=false
font='Source Code Pro 10'
allow-bold=false
bold-color-same-as-fg=true
bold-color='#FFFFFFFFFFFF'
background-color='#1E1E28282C2C'
audible-bell=false
scrollbar-policy='never'
```
So this particular profile is recognised using the string in the first line, `:1430663d-083b-4737-a7f5-8378cc8226d1`

  * To export this profile type (note the ending slash):
  ```
  dconf dump /org/gnome/terminal/legacy/profiles:/:1430663d-083b-4737-a7f5-8378cc8226d1/ > material-theme-profile.dconf
  ```
  * To restore the profile simply write:
  ```
  dconf load /org/gnome/terminal/legacy/profiles:/:1430663d-083b-4737-a7f5-8378cc8226d1/ < material-theme-profile.dconf
  ```
