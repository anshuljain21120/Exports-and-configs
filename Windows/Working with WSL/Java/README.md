# Windows/WSL/Java

This article will guide you on steps to install **Oracle Java** with [WSL](../README.md).

## 1) Know your system
Find architecture and package manager used by your system.

### 1.1) Know your system's architecture
[[Source]](https://askubuntu.com/questions/189640/how-to-find-architecture-of-my-pc-and-ubuntu)

Type `uname -m` in terminal to know your machine's(kernel's) architecture. If it returns `x86_64` that means it is a 64 bit machine running on `x86` architcture.

> * To know more:
> 
>   1.) `uname -p` describes your processer architecture. This is not portable.
>   
>   2.) `uname -i` describes your hardware platform(motherboard) architecture. This is not portable.
>   
>   If they give any output like ix86, where x is 3,4,5 or 6, Your OS is 32bit. i386, i486, i586, i686 are all part of the x86 family of processors. They just refer to the specific age of the processor platform. Eventually all of these got encapsulated into the x86 architecture name. 64bit have `64` keyword in their architecture names for ex. x86_64, aarch64.
>   
>   There are other architectures as well such as arm, aarch which are completely different in their operations from the popular x86 architecture. 

### 1.2) Know your package manager
[[Source]](https://unix.stackexchange.com/questions/665940/how-do-i-check-if-my-linux-is-deb-or-rpm)

There are 2 popular package managers in Linux distros they are: Debian and RPM. To know which your system uses:

* If `dpkg -l` produces a long list of packages, your system uses .deb packages.
* If `rpm -qa` produces a long list of packages, your system uses RPMs.
* If neither of these produce a long list of packages, your system another packaging format.

Note that in many cases you’ll need to know your actual distribution, not just what package format it uses. `cat /etc/os-release` will tell you in most current Linux systems.


## 2) Install JDK
1. Go to Oracle Official Website https://www.oracle.com/java/technologies/javase/jdk11-archive-downloads.html
2. Select the JDK based on your system and your desired Java version. Suppose your system is `x86_64` and uses `Debian` and you want JDK 11 then download `jdk-11.0.17_linux-x64_bin.deb`
3. Extract and install the package via your package manager. For ex. via Debian you must run: `sudo dpkg -i jdk-11.0.17_linux-x64_bin.deb`

> If it gives error on missing required files. Then first run `apt --fix-broken install` this will install required dependencies then you can continue the above command normally.

## 3) Setup PATH ENV
First, find out the directory name where the Oracle JDK 11 is installed with the following command:
```bash
ls /usr/lib/jvm/
```
Suppose the directory name is **jdk-11**. Now, create a new file with the following command:
```bash
sudo nano /etc/profile.d/jdk11.sh
```
An empty file should be opened. Now, add the following lines to the file.
```bash
export JAVA_HOME="/usr/lib/jvm/jdk-11"
export PATH="$PATH:${JAVA_HOME}/bin"
```
> Note: Make sure you change jdk-11 to the directory name you have.

Now, press **<Ctrl> + x** and then press **y** followed by **<Enter>** to save the file. Then restart your computer.
