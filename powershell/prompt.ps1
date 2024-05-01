Import-Module posh-git
Import-Module -Name Terminal-Icons

$configPath = Join-Path $PSScriptRoot "custom-oh-my-posh.omp.json"

oh-my-posh.exe init pwsh --config $configPath | Invoke-Expression
