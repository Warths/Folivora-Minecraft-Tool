#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
^Numpad9:: Reload

WindowRelatives(ByRef WinX, ByRef WinY, ByRef WinWidth, ByRef Height)
	{
		WinGetPos, X, Y, Width, Height, Minecraft
		WinX := X
		WinY := Y
		WinWidth := Width
		WinHeight := Height
		return
	}
		
