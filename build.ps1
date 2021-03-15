[CmdletBinding()]
Param()

Set-StrictMode -Version 2.0; $ErrorActionPreference = "Stop"; $ConfirmPreference = "None"; trap { Write-Error $_ -ErrorAction Continue; exit 1 }
Get-Item -Path Env:* | Sort-Object -Property Name | ForEach-Object {"{0}={1}" -f $_.Name,$_.Value}
Start-Sleep 30