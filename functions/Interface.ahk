#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Include Coordinates.ahk
#Include CallFunction.ahk

WaitForStart()
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
		MidWindow()
		PixelSearch, , , MidWidth, MidHeigth, MidWidth, MidHeight, 0xC6C6C6, 0, Fast
		if (ErrorLevel = 1)
			{
				return false
			}
		return true
	}

InterfaceCalculation()
	{
		Global
		QuartWindow()
		SendMode Event
		
		MouseMove, QuartWidth, QuartHeight
		PixelSearch, LeftBorderInterface, 		, 0, MidHeight, MidWidth, MidHeight, 0xC6C6C6, , Fast
		PixelSearch, 		, TopBorderInterface, MidWidth, 0, MidWidth, MidHeight, 0xC6C6C6, , Fast
		PixelSearch, RightBorderInterface, 		, MidWidth, MidHeight, WinWidth, MidHeight, 0x555555, , Fast
		PixelSearch, 		, BottomBorderInterface, MidWidth, MidHeight, MidWidth, WinHeight, 0x555555, , Fast
		RightBorderInterface--
		BottomBorderInterface--
		Sleep 2000
		MouseMove, LeftBorderInterface, MidHeight
		Sleep 2000
		MouseMove, RightBorderInterface, MidHeight
		Sleep 2000
		MouseMove, MidWidth, TopBorderInterface
		Sleep 2000
		MouseMove, MidWidth, BottomBorderInterface
		Sleep 2000
		
		
	}
