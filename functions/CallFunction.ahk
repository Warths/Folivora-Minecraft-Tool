#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include Jingle.ahk
#Include Interface.ahk
#Include Tips.ahk

CallFunction(Function)
	{
		if (Function = WaitForStart)
			{
				Tip("WaitForStart")
				WaitForStart()
			}	
	}