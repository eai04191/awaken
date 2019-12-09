@echo off

echo|set /p="Restart Bluetooth..."
powershell -ExecutionPolicy RemoteSigned %~dp0bluetooth.ps1 -BluetoothStatus Off
powershell -ExecutionPolicy RemoteSigned %~dp0bluetooth.ps1 -BluetoothStatus On
timeout /t 8 /nobreak >nul
echo  Done

echo|set /p="Unmute Sound Device..."
powershell -ExecutionPolicy RemoteSigned %~dp0unmute.ps1 -ID '%1'
echo  Done

echo|set /p="Restart Voicemeeter..."
"C:\Program Files (x86)\VB\Voicemeeter\voicemeeterpro.exe" -R
echo  Done

pause >nul
