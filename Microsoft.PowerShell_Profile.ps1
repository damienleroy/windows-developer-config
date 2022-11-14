Import-Module Terminal-Icons
Import-Module PSReadLine
Import-Module posh-git

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\agnosterplus.omp.json" | Invoke-Expression

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

Function NAV_MS_FN {cd C:\Users\dleroy\source\repos\navigation\microservices; $host.UI.RawUI.WindowTitle = "Microservices"}
Set-Alias -Name microservices -Value NAV_MS_FN

Function NAV_OA_FN {cd C:\Users\dleroy\source\repos\navigation\operation-access; $host.UI.RawUI.WindowTitle = "OperationAccess"}
Set-Alias -Name operation-access -Value NAV_OA_FN

Function NAV_BOOM_FN {cd C:\Users\dleroy\source\repos\navigation\boom; $host.UI.RawUI.WindowTitle = "Boom"}
Set-Alias -Name boom -Value NAV_BOOM_FN

Function NAV_DATAINJECTOR_FN {cd C:\Users\dleroy\source\repos\navigation\datainjector; $host.UI.RawUI.WindowTitle = "DataInjector"}
Set-Alias -Name datainjector -Value NAV_DATAINJECTOR_FN

# helper to turn PSCustomObject into a list of key/value pairs
function GetlaunchSettingsEnvironmentVariable {
    (Get-Content .\Properties\launchSettings.json | Out-String | ConvertFrom-Json).profiles."OperationAccess.Api".environmentVariables.ASPNETCORE_ENVIRONMENT
}