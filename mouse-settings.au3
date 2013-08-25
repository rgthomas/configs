#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         Robert Thomas

 Script Function:
	Fixes mouse scroll wheel setting, which something is messing up on restart.

#ce ----------------------------------------------------------------------------

Run("control.exe main.cpl")
WinWaitActive("Mouse Properties")
Send("{tab}{tab}{tab}{tab}{tab}{right}{right}{right}{tab}{tab}")
Send("5")
Send("{enter}")
