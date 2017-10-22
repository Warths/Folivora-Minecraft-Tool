#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Include Coordinates.ahk
#Include CallFunction.ahk

WaitForTrigger()
	{
		Global
		Loop
			{
				KeyWait, RButton, D
				KeyWait, LButton, D T0.5
				if (ErrorLevel = 0)
					{
						WindowRelatives()
						MouseGetPos, PosX, PosY
						return true
					}
			}
	}

InterfaceDetection()
	{
		Global
		PixelSearch, , , MidWidth, MidHeigth, MidWidth, MidHeight, 0xC6C6C6, 0, Fast
		if (ErrorLevel = 1)
			{
				return false
			}
		return true
	}

InterfaceRightClick()
	{
		Click, Right
		SaveSec := A_Sec + 1
		Loop
			{
				if InterfaceDetection()
					{
						return True
					}
				if (A_Sec >= SaveSec)
					{
						return False
					}
			}
	}
	
InterfaceBorderCalculation()
	{
		Global
		QuartWindow()
		SendMode Event
		MouseMove, QuartWidth, QuartHeight
		PixelSearch, LeftBorderInterface, , 0, MidHeight, MidWidth, MidHeight, 0xC6C6C6, , Fast
		PixelSearch, , TopBorderInterface, MidWidth, 0, MidWidth, MidHeight, 0xC6C6C6, , Fast
		PixelSearch, RightBorderInterface, , LeftBorderInterface, TopBorderInterface, WinWidth, TopBorderInterface, 0x555555, , Fast
		PixelSearch, , BottomBorderInterface, LeftBorderInterface, TopBorderInterface, LeftBorderInterface, WinHeight, 0x555555, , Fast
		RightBorderInterface--
		BottomBorderInterface--	
	}
	


