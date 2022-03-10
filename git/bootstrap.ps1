$configPath = "~/.gitconfig"

if (Test-Path -Path $configPath) {
    Write-Host "Found $configPath file. Deleting..."
    Remove-Item $configPath
}

New-Item -ItemType SymbolicLink -Path $configPath -Target "./gitconfig"

$userConfigPath = "~/.gitconfig-user"

if (Test-Path -Path $userConfigPath) {
    Write-Host "Found $userConfigPath file. Deleting..."
    Remove-Item $userConfigPath
}

$userName = Read-Host "Enter user.name value"
$userEmail = Read-Host "Enter user.email value"

$content = "[user]"
$content += "`n"
$content += "    name = $userName"
$content += "`n"
$content += "    email = $userEmail"

$content | Out-File -FilePath $userConfigPath -Encoding UTF8

