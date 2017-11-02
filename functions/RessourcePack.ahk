#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

GotoEscape()
	{
		Jingle("Searching")
		Send {Esc}
		while InterfaceDetection()
			{
			}
		Send {Esc}
		Sleep 200
	}
	
EscapeCalculation()
	{
		Global
		PixelSearch, , TopBorderEsc, MidWidth, 0, MidWidth, MidHeight, 0xAAAAAA, , Fast
		if (ErrorLevel = 1)
			{
				return false
			}
		PixelSearch, LeftBorderEsc, , 0, TopBorderEsc, MidWidth, TopBorderEsc, 0xAAAAAA, , Fast
		if (ErrorLevel = 1)
			{
				return false
			}
		PixelSearch, RightBorderEsc, , LeftBorderEsc, TopBorderEsc, WinWidth, TopBorderEsc, 0x000000, , Fast
		if (ErrorLevel = 1)
			{
				return false
			}
		RightBorderEsc--
		EscWidth := RightBorderEsc - LeftBorderEsc + 1
		EscHeight := EscWidth * 342 / 594
		OptionsY := Ceil( TopBorderEsc + EscHeight * 245 / 342 )
	}
	
GotoOptionsAndRessourcePacks()
	{
		Global
		Loop, 2
			{
				Click, Left, %LeftBorderEsc%, %OptionsY%
				Sleep 200
			}
	}

RessourcePackCalculation()
	{
		Global
		ArrowRessourcePackX := Ceil( LeftBorderEsc + EscHeight * 350 / 342 )
		ArrowRessourcePackY := Ceil( TopBorderEsc - EscHeight * 78 / 342 )
		DoneY := Ceil( TopBorderEsc + EscHeight * 600 / 342 )
	}
	
RessourcePackDetection()
	{
		Global
		PixelSearch, , , ArrowRessourcePackX, ArrowRessourcePackY, ArrowRessourcePackX, ArrowRessourcePackY, 0xC99288, , Fast
		if (ErrorLevel = 0)
			{
				return true
			}
		return false
	}
	
RessourcePackMenuDetection()
	{
		Global
		PixelSearch, , , RightBorderEsc, DoneY, RightBorderEsc, DoneY, 0xBF887E, , Fast
		if (ErrorLevel = 0)
			{
				return true
			}
		return false
	}
	
EscMenuDetection()
	{
		Global
		PixelSearch, , CheckEsc, MidWidth, TopBorderEsc, MidWidth, TopBorderEsc, 0xAAAAAA, , Fast
		if (ErrorLevel = 0)
			{
				return true
			}
		return false
	}
		
		