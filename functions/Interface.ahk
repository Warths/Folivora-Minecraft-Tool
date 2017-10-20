#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Include Coordinates.ahk
^Numpad9:: Reload

StartDetection()
	{
		Loop
			{
				KeyWait, RButton, D
				KeyWait, LButton, D T0.5
				if (ErrorLevel = 0)
					{						
						return true
					}
			}
	}

InterfaceDetection()
	{
		WindowRelatives(WinX, WinY, WinWidth, WinHeight, MidWidth, MidHeight)
		PixelSearch, , , MidWidth, MidHeigth, MidWidth, MidHeight, 0xC6C6C6, 0, Fast
		if (ErrorLevel = 1)
			{
				return false
			}
		return true
	}	
	
^Numpad1::
StartDetection()
InterfaceDetection()
if (InterfaceDetection() = true)
	{
		MsgBox, true
	}
else
	{
		MsgBox, false
	}
