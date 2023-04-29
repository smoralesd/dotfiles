function Ensure-Directory {
    param (
        [string]$Path
    )

    if (-not(Test-Path -Path $Path)) {
        Write-Host "$Path not found. Creating the directory..."
        New-Item $Path -ItemType Directory
    }
}

function Remove-Profile {
    param (
        [string]$Path
    )

    if (Test-Path -Path $Path) {
        Write-Host "Found $Path file. Deleting..."
        Remove-Item $Path
    }
}

$profileFilename = "Microsoft.PowerShell_profile.ps1"

$powershellHome = Join-Path $HOME "Documents/PowerShell"

Ensure-Directory -Path $powershellHome

$windowsTerminalProfilePath = Join-Path $powershellHome $profileFilename

Remove-Profile -Path $windowsTerminalProfilePath

$windowsPowershellHome = Join-Path $HOME "Documents/WindowsPowerShell"

Ensure-Directory -Path $windowsPowershellHome

$windowsPowershellProfilePath = Join-Path $windowsPowershellHome $profileFilename

Remove-Profile -Path $windowsPowershellProfilePath


$repoHome = git rev-parse --show-toplevel
$powerShellDir = Join-Path $repoHome "powershell"

$aliases = Join-Path $powerShellDir "aliases.ps1"
$prompt = Join-Path $powerShellDir "prompt.ps1"

$content = ". $aliases" # sources alias file
$content += "`n"
$content += ". $prompt" # sources custom prompt file

$content | Out-File -FilePath $windowsTerminalProfilePath -Encoding UTF8
$content | Out-File -FilePath $windowsPowershellProfilePath -Encoding UTF8

