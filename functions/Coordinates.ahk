﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

WindowRelatives()
	{
		Global
		WinGetPos, WinX, WinY, WinWidth, WinHeight, Minecraft
		return
	}
	
MidWindow()
	{
		Global
		MidWidth := WinWidth / 2
		MidHeight := WinHeight / 2
		return
	}

QuartWindow()
	{
		Global
		QuartWidth := WinWidth / 4
		QuartHeight := WinHeight / 4
		return
	}
