#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         Robert Thomas

 Script Function:
	Fixes mouse scroll wheel setting, which something is messing up on restart.

#ce ----------------------------------------------------------------------------

Run("control.exe main.cpl")
WinWaitActive("Mouse Properties")

; Move to 'Wheel' tab
Send("+{tab}{right 3}")
Send("{tab 2}")
Send("5")

Send("{enter}")

