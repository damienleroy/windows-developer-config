Set-ExecutionPolicy Bypass -Scope Process -Force;
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted;

./Scripts/Powershell.ps1
./Scripts/Winget-Packages.ps1
./Scripts/Chocolatey.ps1
./Scripts/WIX.ps1
./Scripts/VSExtensions.ps1