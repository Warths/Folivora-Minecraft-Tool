#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

WindowRelatives(ByRef WinX, ByRef WinY, ByRef WinWidth, ByRef WinHeight)
	{
		WinGetPos, WinX, WinY, WinWidth, WinHeight, Minecraft
		return
	}
	
MidWindow(ByRef MidWidth, ByRef MidHeight)
	{
		MidWidth := WinWidth / 2
		MidHeight := WinHeight / 2
		return
	}

QuartWindow(ByRef QuartWidth, ByRef QuartHeight)
	{
		QuartWidth := WinWidth / 4
		QuartHeight := WinHeight / 4
		return
	}
