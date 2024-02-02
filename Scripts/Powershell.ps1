echo "Install Powershell modules"

Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted;

Install-Module posh-git
Install-Module Terminal-Icons
Install-Module PSReadLine -Force # (overwrites the existing PSReadLine module)