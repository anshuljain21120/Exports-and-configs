# Windows/Windows Subsystem for Linux

Windows Subsystem for Linux (WSL) is a feature of Windows that allows developers to run a Linux environment without the need for a separate virtual machine or dual booting. There are two versions of WSL: WSL 1 and WSL 2(Latest).
This article will guide you on steps to install **WSL2 only**.

## 1) Enable VM Support from BIOS
This option will be present in your BIOS Menu and is specific to every machine. You can search how to enable it specific to your machine.

## 2) Enable VM and WSL Feature from Windows
[[Source]](https://stackoverflow.com/a/68768646)

Go to `Control Panel -> Programs -> Turn Windows features Turn On or Off`
You need to check:
* Windows Subsystem For Linux
* Windows Hypervisor Platform
* Virtual Machine Platform

Then click OK.

## 3) Install WSL2 via GUI
1. Open Microsoft store app, Search WSL and install the first app provided by Microsoft Corporation. (Or click on this direct link to it: https://www.microsoft.com/store/productId/9P9TQF7MRM4R)
2. Search for the specific distro to use with it. I recommend installing Ubuntu.
3. Install it from store app only.

## 4) Install WSL2 via CLI
[[Source]](https://learn.microsoft.com/en-us/windows/wsl/install#install-wsl-command)

Open PowerShell or Windows Command Prompt in administrator mode by right-clicking and selecting "Run as administrator", enter the wsl --install command, then restart your machine.
```powershell
wsl --install
```

This command will enable the features necessary to run WSL and install the Ubuntu distribution of Linux. ([This default distribution can be changed](https://learn.microsoft.com/en-us/windows/wsl/basic-commands#install)).
> * If you're running an older build, or just prefer not to use the install command and would like step-by-step directions, see [WSL manual installation steps for older versions](https://learn.microsoft.com/en-us/windows/wsl/install-manual).
> * The first time you launch a newly installed Linux distribution, a console window will open and you'll be asked to wait for files to de-compress and be stored on your machine. All future launches should take less than a second. 

### 4.1) Change the default Linux distribution installed
By default, the installed Linux distribution will be Ubuntu. This can be changed using the `-d` flag.

* To change the distribution installed, enter: `wsl --install -d <Distribution Name>`. Replace `<Distribution Name>` with the name of the distribution you would like to install.
* To see a list of available Linux distributions available for download through the online store, enter: `wsl --list --online`.
* To install additional Linux distributions after the initial install, you may also use the command: `wsl --install -d <Distribution Name>`.

> If you want to install additional distributions from inside a Linux/Bash command line (rather than from PowerShell or Command Prompt), you must use `.exe` in the command: `wsl.exe --install -d <Distribution Name>` or to list available distributions: `wsl.exe --list --online`.


## Must Read:
1. [Working across Windows and Linux file systems](https://learn.microsoft.com/en-us/windows/wsl/filesystems)
2. [Set up your Linux user info and best practices](https://learn.microsoft.com/en-us/windows/wsl/install#set-up-your-linux-user-info)
