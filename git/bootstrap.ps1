$configPath = "~/.gitconfig"

if (Test-Path -Path $configPath) {
    Write-Host "Found $configPath file. Deleting..."
    Remove-Item $configPath
}

$userName = Read-Host "Enter user.name value"
$userEmail = Read-Host "Enter user.email value"

$userConfigPath = Join-Path $pwd "gitconfig-user"
# git does not like \ so we need to replace them for /
$userConfigPath = $userConfigPath -replace "\\", "/"

$content = "[user]"
$content += "`n"
$content += "    name = $userName"
$content += "`n"
$content += "    email = $userEmail"
$content += "`n"
$content += "[include]"
$content += "`n"
$content += "    path = $userConfigPath"
$content += "`n"

$content | Out-File -FilePath $configPath -Encoding UTF8

