#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CheckTrigger()
	{
		Tip("WaitForTrigger")
		Loop
			{
				WaitForTrigger()
				MidWindow()
				if InterfaceDetection()
					{
						Tip("Interface")
						return
					}
				Tip("NotATrigger")
			}
	}

RessourcePack()
	{
		Global
		GotoEscape()
		EscapeCalculation()
		if (EscapeCalculation() = false)
			{
				Tip("WeirdRessourcePack")
				return false
			}
		GotoOptionsAndRessourcePacks()
		RessourcePackCalculation()
		MouseMove, ArrowRessourcePackX, ArrowRessourcePackY
		while RessourcePackDetection()
			{
				Click, Left
			}
		Click, Left, %RightBorderEsc%, %DoneY%
		while RessourcePackMenuDetection()
			{
			}
		Send {Esc}
		while EscMenuDetection()
			{
			}
	}
	
AccessInterface()
	{
		Global
		if InterfaceRightClick()
			{
				SoundPlay, Nonexistent.avi
				return
			}
		else if (InventoryKeyDetection != "NO")
			{
				InventoryKey := InventoryKey()
				SoundPlay, Nonexistent.avi
			}
		else
			{
				Send {%InventoryKey%}
				SoundPlay, Nonexistent.avi
			}
	}	
