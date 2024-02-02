./Scripts/Powershell.ps1
./Scripts/Winget-Packages.ps1
./Scripts/Chocolatey.ps1
./Scripts/VSExtensions.ps1

# ask confirmation about copy profile file to PowerShell folder
$reply = Read-Host "Do you want to copy the profile file to the PowerShell folder? (y/n)"
if ($reply -match "^[Yy]$") {
  Copy-Item ./miscellaneous/Microsoft.PowerShell_Profile.ps1 $PROFILE
}

# ask confirmation about copy .gitconfig file in the user folder
$reply = Read-Host "Do you want to copy the .gitconfig file in the user folder? (y/n)"
if ($reply -match "^[Yy]$") {
  Copy-Item ./miscellaneous/.gitconfig ~/
}

# ask confirmation about copy agnosterplus-custom.omp.json (posh-my-git theme file) file in the theme folder
$reply = Read-Host "Do you want to copy the 'agnosterplus-custom.omp.json' file (posh-my-git theme file) in the theme folder? (y/n)"
if ($reply -match "^[Yy]$") {
  Copy-Item ./miscellaneous/agnosterplus-custom.omp.json $env:POSH_THEMES_PATH
}