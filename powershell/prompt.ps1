Import-Module posh-git

$configPath = Join-Path $PSScriptRoot "custom-oh-my-posh.omp.json"

oh-my-posh.exe init pwsh --config $configPath | Invoke-Expression
