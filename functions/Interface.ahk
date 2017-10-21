#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Include Coordinates.ahk
#Include CallFunction.ahk
^Numpad9:: Reload

WaitForStart()
	{
		Loop
			{
				KeyWait, RButton, D
				KeyWait, LButton, D T0.5
				if (ErrorLevel = 0)
					{
						WindowRelatives(WinX, WinY, WinWidth, WinHeight, MidWidth, MidHeight)
						MouseGetPos, PosX, PosY
						return true
					}
			}
	}

InterfaceDetection()
	{
		PixelSearch, , , MidWidth, MidHeigth, MidWidth, MidHeight, 0xC6C6C6, 0, Fast
		if (ErrorLevel = 1)
			{
				return false
			}
		return true
	}

InterfaceCalculation()
	{
	}
		
	
^Numpad1::
CallFunction(WaitForStart)
InterfaceDetection()
if (InterfaceDetection() = true)
	{
		MsgBox, true
	}
else
	{
		MsgBox, false
	}
