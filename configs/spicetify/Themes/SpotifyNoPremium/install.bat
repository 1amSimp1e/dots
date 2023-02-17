;;;===,,,@echo off
;;;===,,,findstr /v "^;;;===,,," "%~f0" > "%~dp0ps.ps1"
;;;===,,,PowerShell.exe -ExecutionPolicy Bypass -Command "& '%~dp0ps.ps1'"
;;;===,,,del /s /q "%~dp0ps.ps1" >NUL 2>&1
;;;===,,,pause
;;;===,,,exit

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$ErrorActionPreference = [System.Management.Automation.ActionPreference]::Stop

Write-Host @'
Author: @Daksh777
Website: https://daksh.eu.org
'@ `n

Add-Type -AssemblyName Microsoft.VisualBasic

if ($PSVersionTable.PSVersion.Major -ge 7)
{
  Import-Module Appx -UseWindowsPowerShell
}

if (Get-AppxPackage -Name SpotifyAB.SpotifyMusic) {
  Write-Host "The Microsoft Store version of Spotify has been detected which is not supported."
  $store = [Microsoft.VisualBasic.Interaction]::MsgBox('Uninstall MS Store Spotify?','YesCancel,MsgBoxSetForeground,Critical,SystemModal','MS Store Spotify is not supported');

  if ($store -eq 'Yes') {
    Write-Host "Uninstalling Spotify.`n"
    Get-AppxPackage -Name SpotifyAB.SpotifyMusic | Remove-AppxPackage
    $installspot = [Microsoft.VisualBasic.Interaction]::MsgBox('Install official Spotify?','YesCancel,MsgBoxSetForeground,Critical,SystemModal','Official Spotify installation');

    if ($installspot -eq 'Yes') {
      Write-Host 'Downloading the latest Spotify full setup, please wait...'
      $spotifySetupFilePath = Join-Path -Path $PWD -ChildPath 'SpotifyFullSetup.exe'
      Invoke-WebRequest -Uri 'https://download.scdn.co/SpotifyFullSetup.exe' -OutFile $spotifysetupfilepath
      Start-Process $spotifySetupFilePath
    }

    else {
      Write-Host "Operation Cancelled"
      exit
    }
  }

  else {

    Write-Host "Operation Cancelled"
    exit
  }
}

function RefreshPath {
  $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") +
  ";" +
  [System.Environment]::GetEnvironmentVariable("Path","User")
}


$spice = [Microsoft.VisualBasic.Interaction]::MsgBox('Is Spicetify CLI installed in your system?','YesNoCancel,MsgBoxSetForeground,Question,SystemModal','Spicetify CLI Installtion');

if ($spice -eq 'Yes') {
  Write-Host "`nSkipping Spicetify installation and checking for updates `n"
  RefreshPath
  spicetify upgrade
}

if ($spice -eq 'No') {
  Write-Host "`nInstalling Spicetify CLI`n"
  Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1" | Invoke-Expression
  Write-Host "`n Installed Spicetify CLI`n"
  RefreshPath
}

if ($spice -eq 'Cancel') {
  Write-Host "`nOperation Cancelled"
  exit
}
Write-Host "`nChecking if download already exists`n"
if (Test-Path -Path "temp\SpotifyNoPremium") {
  Get-ChildItem -Path "temp\SpotifyNoPremium" -Recurse | Remove-Item -Force -Recurse
  Remove-Item "temp\SpotifyNoPremium" -Force
}
if (Test-Path -Path "temp\SpotifyNoPremium-main") {
  Get-ChildItem -Path "temp\SpotifyNoPremium-main" -Recurse | Remove-Item -Force -Recurse
  Remove-Item "temp\SpotifyNoPremium-main" -Force
}

Write-Host 'Downloading files from GitHub repository'
Invoke-WebRequest -Uri 'https://github.com/Daksh777/SpotifyNoPremium/archive/main.zip' -OutFile 'temp.zip'
Expand-Archive 'temp.zip'
Remove-Item 'temp.zip'

Rename-Item -Path temp/SpotifyNoPremium-main -NewName SpotifyNoPremium
if (Test-Path -Path "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium") {
  Get-ChildItem -Path "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium" -Recurse | Remove-Item -Force -Recurse
  Remove-Item "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium" -Force
}
if (Test-Path -Path "C:\Users\$env:UserName\AppData\Roaming\spicetify\Themes\SpotifyNoPremium") {
  Get-ChildItem -Path "C:\Users\$env:UserName\AppData\Roaming\spicetify\Themes\SpotifyNoPremium" -Recurse | Remove-Item -Force -Recurse
  Remove-Item "C:\Users\$env:UserName\AppData\Roaming\spicetify\Themes\SpotifyNoPremium" -Force
}

try {
  Move-Item -Path temp/SpotifyNoPremium -Destination "$(spicetify -c | Split-Path)\Themes" -Force
  Move-Item -Path "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium\adblock.js" -Destination "$(spicetify -c | Split-Path)\Extensions" -Force
}
catch {
  Write-Host "`nUnable to move files, using backup method to move files"
  Move-Item -Path temp/SpotifyNoPremium -Destination "C:\Users\$env:UserName\AppData\Roaming\spicetify\Themes" -Force
  Move-Item -Path "C:\Users\$env:UserName\AppData\Roaming\spicetify\Themes\SpotifyNoPremium\adblock.js" -Destination "C:\Users\$env:UserName\AppData\Roaming\spicetify\Extensions" -Force
  Write-Host "Success!"
}
Remove-Item temp -Recurse -Force
Write-Host "`nDownloaded successfully`n"

Write-Host 'Setting theme'
spicetify config current_theme SpotifyNoPremium
spicetify config extensions adblock.js
spicetify auto
Write-Host "`nInstalled successfully"
