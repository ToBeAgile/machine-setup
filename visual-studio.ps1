# This script
# iwr -useb https://raw.githubusercontent.com/ToBeAgile/machine-setup/main/visual-studio.ps1 | iex

#Requires -RunAsAdministrator

# Set up base Windows machine
iwr -useb https://raw.githubusercontent.com/ToBeAgile/machine-setup/main/windows.ps1 | iex

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation
cinst visualstudio2019professional visualstudio2019-workload-manageddesktop netfx-4.8-devpack
cinst resharper-ultimate-all ncrunch-vs2019
cinst nuget.commandline

# Need a way to automate installing this package
& "${env:ProgramFiles}\Google\Chrome\Application\chrome.exe" https://marketplace.visualstudio.com/items?itemName=HangjitRai.AutoSaveFile

Write-Host -Foreground yellow "Reboot when done"
