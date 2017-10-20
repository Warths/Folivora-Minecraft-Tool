﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include PlaySound.ahk
^Numpad9:: Reload

Jingle(JingleName)
	{
		if(SoundActivated != "NO")
		{
			if(JingleName = "Success") ; Run when a full event went successfully 
				{
					PlayNote("G", 3, 90)
					PlayNote("D", 4, 90)
					PlayNote("G", 4, 90)
					PlayNote("A", 4, 90)
					PlayNote("B", 4, 360)
				} 
			else if(JingleName = "Select") ; Run when a tile is selected
				{
					PlayNote("G", 3, 90)
					PlayNote("G", 4, 180)
				} 
			else if(JingleName = "Unselect") ; Run when a selected tile is unselected
				{
					PlayNote("G", 4, 90)
					PlayNote("G", 3, 180)
				} 
			else if(JingleName = "Error") ; Run when something is not possible (Unselectable tile?)
				{
					PlayNote("G", 2, 90)
					PlayNote("G", 2, 360)
				} 
			else if(JingleName = "CriticalError") ; Run when something went wrong (Indicates the user that he needs to do the configuration process again)
				{
					PlayNote("G", 3, 120)
					PlayNote("D", 4, 120)
					PlayNote("G", 4, 120)
					PlayNote("F#", 3, 120)
					PlayNote("C#", 4, 120)
					PlayNote("F#", 4, 120)
					PlayNote("F", 3, 120)
					PlayNote("C", 4, 120)
					PlayNote("F", 4, 120)
					PlayNote("E", 3, 120)
					PlayNote("B", 3, 120)
					PlayNote("E", 4, 480)
				}
		}
	}
	
^Numpad1::
Sleep 1000
Jingle("Success")
Sleep 2000
Jingle("Select")
Sleep 2000
Jingle("Unselect")
Sleep 2000
Jingle("Error")
Sleep 2000
Jingle("CriticalError")
Reload