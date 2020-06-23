# Run Ubuntu Desktop on WSL 2 in Windows 10
Here is the script which runs a ubuntu desktop on WSL 2. It assumed that you are using an updated Windows 10 and 64-bit cpu architecture. Follow the instructions to install and run ubuntu desktop:

1. Make sure that your Windows 10 is updated (Build 19041 or higher).

2. Open PowerShell as Administrator and run:

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

3. Restart your machine to complete the WSL install and update to WSL 2.

4. Run the following command in PowerShell to set WSL 2 as the default version when installing a new Linux distribution:

```powershell
wsl --set-default-version 2
```

5. Download and install linux kernel update for windows from https://aka.ms/wsl2kernel

6. From **Windows Store** find and install Ubuntu-18.04.

7. After installation is finished, Run **Ubuntu** from 'Start Menu'. You will then need to create a user account and password for your new Linux distribution.

8. Enter ```sudo apt update && sudo apt install ubuntu-desktop``` and wait for successful installation of required packages.

9. As your packages are installing, download and install VcXsrv from https://sourceforge.net/projects/vcxsrv

10. Finally, in your Ubuntu terminal, run ```sudo bash gnome-desktop.sh```


Enjoy it!
