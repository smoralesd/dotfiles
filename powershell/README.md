# Windows Powershell
1. Install `posh-git`
   1. Follow the instructions from https://github.com/dahlbyk/posh-git#installation
      1. `PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force`
1. Install `oh-my-posh`
   1. Follow the instructions from https://ohmyposh.dev/docs/installation/windows
      1. `winget install JanDeDobbeleer.OhMyPosh -s winget`
1. Install `Terminal-Icons`
   1. `Install-Module -Name Terminal-Icons -Repository PSGallery`
1. Run `bootstrap.ps1` from an elevated PowerShell to setup the profiles.
