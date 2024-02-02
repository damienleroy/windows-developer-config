echo "Install Winget"

Invoke-WebRequest -Uri https://github.com/microsoft/winget-cli/releases/download/v1.3.2691/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -OutFile .\MicrosoftDesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Add-AppXPackage -Path .\MicrosoftDesktopAppInstaller_8wekyb3d8bbwe.msixbundle

echo "install Winget Packages"

winget install Microsoft.WindowsTerminal
winget install 7zip.7zip
winget install Git.Git
winget install JanDeDobbeleer.OhMyPosh
winget install Microsoft.DotNet.SDK.7
winget install Microsoft.PowerToys
winget install Microsoft.VisualStudioCode
winget install Notepad++.Notepad++
winget install Microsoft.VisualStudio.2022.Professional
winget install Mozilla.Firefox
winget install JetBrains.DataGrip
winget install 9PGCV4V3BK4W