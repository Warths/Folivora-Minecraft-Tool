#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

WindowRelatives(ByRef WinX, ByRef WinY, ByRef WinWidth, ByRef Height, ByRef MidWidth, ByRef MidHeight)
	{
		WinGetPos, X, Y, Width, Height, Minecraft
		WinX := X
		WinY := Y
		WinWidth := Width
		WinHeight := Height
		MidWidth := Width / 2
		MidHeight := Height / 2
		return
	}
