# Windows-Configs

Contains configs and theme exports of my Windows machine.

----------------------------

## System File Checker Tool
#### [[source](https://support.microsoft.com/en-us/topic/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system-files-79aa86cb-ca52-166a-92a3-966e85d4094e)]
If some Windows functions aren't working or Windows crashes, use the System File Checker to scan Windows and restore your files.

1. Open a command prompt with administrator priviledges. 

2. Type the following command, and then press Enter.  It may take several minutes for the command operation to be completed. ```DISM.exe /Online /Cleanup-image /Restorehealth```
> **Important**: When you run this command, DISM uses Windows Update to provide the files that are required to fix corruptions. However, if your Windows Update client is already broken, use a running Windows installation as the repair source, or use a Windows side-by-side folder from a network share or from a removable media, such as the Windows DVD, as the source of the files. To do this, run the following command instead: ```DISM.exe /Online /Cleanup-Image /RestoreHealth /Source:C:\RepairSource\Windows /LimitAccess```. Replace the **C:\RepairSource\Windows** placeholder with the location of your repair source. For more information about using the DISM tool to repair Windows, reference [Repair a Windows Image.](http://technet.microsoft.com/library/hh824869.aspx)

3. Now run ```sfc /scannow```. The sfc /scannow command will scan all protected system files, and replace corrupted files with a cached copy that is located in a compressed folder at `%WinDir%\System32\dllcache`. The **%WinDir%** placeholder represents the Windows operating system folder. For example, *C:\Windows*.
> **Note:** Do not close this Command Prompt window until the verification is 100% complete. The scan results will be shown after this process is finished.

4. After the process is finished, you may receive one of the following messages: 
  * Windows Resource Protection did not find any integrity violations. 
  > This means that you do not have any missing or corrupted system files.
 
  * Windows Resource Protection could not perform the requested operation. 
  > To resolve this problem, perform the System File Checker scan [in safe mode](http://windows.microsoft.com/windows/start-computer-safe-mode), and make sure that the PendingDeletes and PendingRenames folders exist under **%WinDir%\WinSxS\Temp**.
  
  * Windows Resource Protection found corrupt files and successfully repaired them. Details are included in the CBS.Log **%WinDir%**\Logs\CBS\CBS.log. 
  > To view the detail information about the system file scan and restoration, go to [How to view details of the System File Checker process.](https://support.microsoft.com/en-us/topic/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system-files-79aa86cb-ca52-166a-92a3-966e85d4094e#bkmk_cbs_log)
  
  * Windows Resource Protection found corrupt files but was unable to fix some of them. Details are included in the CBS.Log **%WinDir%**\Logs\CBS\CBS.log. 
  > To repair the corrupted files manually, [view details of the System File Checker process](https://support.microsoft.com/en-us/topic/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system-files-79aa86cb-ca52-166a-92a3-966e85d4094e#bkmk_cbs_log) to find the corrupted file, and then [manually replace the corrupted file with a known good copy of the file.](https://support.microsoft.com/en-us/topic/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system-files-79aa86cb-ca52-166a-92a3-966e85d4094e#bkmk_manually_repair)
