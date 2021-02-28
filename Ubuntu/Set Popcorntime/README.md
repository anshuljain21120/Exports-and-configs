# Ubuntu-Configs/Popcorntime
[About](https://en.wikipedia.org/wiki/Popcorn_Time)		|		[Official Website](https://popcorntime.app/)		|		[Source Code](https://github.com/popcorn-official)

Popcorn Time streams movies and TV shows from torrents.

Popcorntime-dashboard           |  Popcorntime-itempage
:-------------------------:|:-------------------------:
![Popcorntime-dashboard](https://github.com/anshuljain21120/Exports-and-configs/blob/add-psensor-config/Ubuntu/Set%20Popcorntime/Popcorntime-dashboard.png)  |  ![Popcorntime-itempage](https://github.com/anshuljain21120/Exports-and-configs/blob/add-psensor-config/Ubuntu/Set%20Popcorntime/Popcorntime-itempage.png)


--------------------------

## Installation
1. Open this link and download desired version zip file in your Downloads folder: 
```https://get.popcorntime.app/repo/build/```

2. Now run these commands one by one in terminal
* `sudo apt update && sudo apt install libcanberra-gtk-module libgconf-2-4 libatomic1`
* `sudo mkdir /opt/popcorntime`
* `cd ~/Downloads`
* `sudo unzip <Downloaded zip file name with extension and without these angular brackets> -d /opt/popcorntime/`
* `sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time`

3. Now run `sudo nano /usr/share/applications/popcorntime.desktop` and insert below lines as it is:
```
[Desktop Entry]
Version = 1.0
Type = Application
Terminal = false
Name = Popcorn Time
Exec = /usr/bin/Popcorn-Time
Icon = /opt/popcorntime/popcorn.png
Categories = Application;
```
4. Press <kbd>Ctrl</kbd>+<kbd>O</kbd> then enter to save file, and <kbd>Ctrl</kbd>+<kbd>X</kbd> to quit nano.

5. Atlast run this command
sudo wget -O /opt/popcorntime/popcorn.png https://upload.wikimedia.org/wikipedia/commons/d/df/Pctlogo.png

## Configuring the player
* If incase that it keeps stuttering in online streaming, then open a terminal and run `sudo chown -R root:root /opt/popcorntime` 
(Reason: This issue arises when parent folder has root access but its subfolders isn't, and hence solved by giving all its subdirectories root permissions.)
* To add subtitle facility enter login details of opensubtitle.org in settings.
