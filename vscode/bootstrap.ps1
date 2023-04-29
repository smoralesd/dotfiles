$settingsPath = Join-Path $HOME "AppData\Roaming\Code\User\settings.json"

if (Test-Path -Path $settingsPath) {
    Write-Host "Found $settingsPath. Deleting..."
    Remove-Item $settingsPath
}

$repoHome = git rev-parse --show-toplevel
$vscodePath = Join-Path $repoHome "vscode/settings.json"

New-Item -ItemType SymbolicLink -Path $settingsPath -Target $vscodePath
