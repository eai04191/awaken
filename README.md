# awaken
![WORKS ON MY MACHINE](https://rawcdn.githack.com/eai04191/userscript-graveyard/1e3ed209a27b34469f825582b2ec02019c8a70bf/for-the-badge/works-on-my-machine.svg)

Restart Bluetooth, unmute the device, and finally restart Voicemeeter.

# Usage

First, check the Sound device ID using `check_device_id.ps1`.

```cmd
powershell -ExecutionPolicy RemoteSigned script\check_device_id.ps1
```

The ID looks like `{0.0.0.00000000}. {2b020ce5-bd9f-4545-b164-b388767d21f0}`.

Next, create a shortcut to awaken.bat. Then open the properties and insert the space and ID at the end of the link destination.

You can run this shortcut whenever you want to play sound from the speaker.

# License

This script is MIT license except for the following.

`bluetooth.ps1` is made by [Ben N](https://superuser.com/users/380318/ben-n). from [superuser.com](https://superuser.com/questions/1168551/turn-on-off-bluetooth-radio-adapter-from-cmd-powershell-in-windows-10)

`AudioDeviceCmdlets.dll` is made by [frgnca](https://github.com/frgnca). from [frgnca/AudioDeviceCmdlets](https://github.com/frgnca/AudioDeviceCmdlets)
