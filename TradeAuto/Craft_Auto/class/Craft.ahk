Craft:
SendMode Event
SetMouseDelay, 2
SetKeyDelay, 2
SetDefaultMouseSpeed, 2
; ITEM PLACEMENT / SORTING
Loop 
{
	LoopCount := 1
	ItemCount := 1
	Loop, 9
	{
		If (Slot_%LoopCount%_Selected = 1)
		{
			MouseMove, Hotbar_Slot%ItemCount%_X, Hotbar_Y
			Click, Right
			MouseMove, Crafting_Table_Slot%LoopCount%_X, Crafting_Table_Slot%LoopCount%_Y
			Click, Left
			ItemCount++		
		}
		LoopCount++
	}
	; ITEM CRAFT AND EXPULSION
	Sleep 100
	MouseMove, Craft_Output_X, Craft_OutPut_Y
	If (ItemCount > 0)
	{
		Loop, 48
		{
			MouseMove, Craft_Output_X, Craft_OutPut_Y
			Send A
			Sleep 50
		}
		SoundBeep, 550, 200
	}
	If (SCRIPT = "OFF")
	{
		SoundBeep, 293, 500
		Return
	}
	Sleep 100
}
Return