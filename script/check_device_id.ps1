$ScriptDir = Split-Path -parent $MyInvocation.MyCommand.Path
Import-Module $ScriptDir\AudioDeviceCmdlets.dll
Get-AudioDevice -List