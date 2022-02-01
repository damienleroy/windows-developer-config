Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
Import-Module PSReadLine

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

$env:POSH_GIT_ENABLED = $true
Set-PoshPrompt perso

# global functions
Function CBIN_FN {Get-ChildItem .\ -include bin,obj -Recurse | ForEach-Object ($_) { Remove-Item $_.FullName -Force -Recurse }}
Set-Alias -Name cbin -Value CBIN_FN

Function TOOLS_FN {cd C:\Users\dleroy\source\repos\tools}
Set-Alias -Name tools -Value TOOLS_FN

Function TEST_FN {cd C:\Users\dleroy\source\repos\test}
Set-Alias -Name test -Value TEST_FN


# Navigation
Function NAV_FN {cd C:\Users\dleroy\source\repos\navigation}
Set-Alias -Name nav -Value NAV_FN

Function NAV_API_FN {cd C:\Users\dleroy\source\repos\navigation\api}
Set-Alias -Name api -Value NAV_API_FN

Function NAV_MS_FN {cd C:\Users\dleroy\source\repos\navigation\microservices}
Set-Alias -Name microservices -Value NAV_MS_FN

Function NAV_OA_FN {cd C:\Users\dleroy\source\repos\navigation\operation-access}
Set-Alias -Name operation-access -Value NAV_OA_FN

Function NAV_BOOM_FN {cd C:\Users\dleroy\source\repos\navigation\boom}
Set-Alias -Name boom -Value NAV_BOOM_FN
