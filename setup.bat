@echo off
:: Install Chocolatey
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-ExecutionPolicy Bypass -Scope Process; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Install software using Chocolatey
choco install -y brave firefox 7zip filezilla bitwarden steam discord obs-studio paint.net

:: Install WSL with Ubuntu
wsl --install -d Ubuntu
echo WSL will now install. Please reboot your machine once it's done and rerun the Bash script in the Ubuntu terminal.

pause
exit
