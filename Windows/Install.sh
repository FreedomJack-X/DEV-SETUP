# Install Choco
# Run
Get-ExecutionPolicy
# If it returns Restricted, then run
Set-ExecutionPolicy AllSigned
# or
Set-ExecutionPolicy Bypass -Scope Process
# then Run
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Git
choco install git

# Install Vim
choco install vim

# Install Windows Subsystem for Linux (WSL)
# https://docs.microsoft.com/en-us/windows/wsl/install-win10#update-to-wsl-2
# Before installing any Linux distributions on Windows, you must enable the "Windows Subsystem for Linux" optional feature.
# Open PowerShell as Administrator and run:
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
# Before installing WSL 2, you must enable the "Virtual Machine Platform" optional feature.
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
# Run the following command in Powershell to set WSL 2 as the default version when installing a new Linux distribution:
wsl --set-default-version 2
# Follow instructions to Install your Linux distribution from Microsoft Store

