# Welcome
This project is to reinstall needed tools from PowerShell. This as been configured for mine purpose as a dotnet developer, with my usage, but can be adapt for each situation for others developers.

# Execution

### Step 1
Run the following commands or it would not be able to execute the install file or the PowerShell configuration file:
```
Set-ExecutionPolicy Bypass -Scope LocalMachine -Force;
```
More information [here](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.4)

### Step 2
Execute `Install.ps1`.

### Step 3
Install a [Nerd font](https://www.nerdfonts.com/) and configure it in your favorite terminal.

# Installed Tools
The script install the follwing tools:

### Powershell
- [posh-git](https://github.com/dahlbyk/posh-git)
- [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
- [PSReadLine](https://github.com/PowerShell/PSReadLine)

### Winget
- WindowsTerminal
- 7zip
- Git
- OhMyPosh
- dotnet sdk
- PowerToys
- VisualStudioCode
- Notepad++
- VisualStudio.2022.Professional
- Firefox
- DataGrip (From JetBrains)
- DevToys

### Chocolatey
- paint.net

### Visual Studio Extensions
- WIX