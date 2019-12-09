[CmdletBinding()] Param(
    [Parameter(Mandatory = $true)][string]$ID
)

$ScriptDir = Split-Path -parent $MyInvocation.MyCommand.Path
Import-Module $ScriptDir\AudioDeviceCmdlets.dll

# Get current playback device
$PlaybackDevice = Get-AudioDevice -Playback

# Set specify playback device and unmute
Set-AudioDevice -ID $ID | Out-Null
Set-AudioDevice -PlaybackMute $false

# Return to an original playback device
Set-AudioDevice -ID $PlaybackDevice.ID | Out-Null
