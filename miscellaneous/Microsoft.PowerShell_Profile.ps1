Import-Module Terminal-Icons
Import-Module PSReadLine
Import-Module posh-git

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\agnosterplus-custom.omp.json" | Invoke-Expression

# global functions
Function CBIN_FN {Get-ChildItem .\ -include bin,obj -Recurse | ForEach-Object ($_) { Remove-Item $_.FullName -Force -Recurse }}
Set-Alias -Name cbin -Value CBIN_FN

Function TOOLS_FN {cd C:\Users\dleroy\source\repos\tools; $host.UI.RawUI.WindowTitle = "Tools"}
Set-Alias -Name tools -Value TOOLS_FN

Function TEST_FN {cd C:\Users\dleroy\source\repos\test; $host.UI.RawUI.WindowTitle = "Tests"}
Set-Alias -Name test -Value TEST_FN


# Navigation
Function NAV_FN {cd C:\Users\dleroy\source\repos\navigation}
Set-Alias -Name nav -Value NAV_FN

Function NAV_API_FN {cd C:\Users\dleroy\source\repos\navigation\api; $host.UI.RawUI.WindowTitle = "Nav API"}
Set-Alias -Name api -Value NAV_API_FN

Function NAV_MS_FN {cd C:\Users\dleroy\source\repos\navigation\microservices; $host.UI.RawUI.WindowTitle = "Services"}
Set-Alias -Name services -Value NAV_MS_FN
Set-Alias -Name boom -Value NAV_MS_FN

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
