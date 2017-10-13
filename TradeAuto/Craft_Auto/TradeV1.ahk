;Class
#Include class/PrimaryHand.ahk
#Include class/BorderDetection.ahk
#Include class/InterfaceMathematics.ahk
#Include class/MoveItem.ahk
#Include class/Trade.ahk
#Include class/ClearInputSlot.ahk
#Include class/Reinit.ahk
#Include class/SlotCalculator.ahk
#Include class/CraftingTableMathematics.ahk
#Include class/Craft.ahk
; Villager templates
#Include villager_template/Brown_Farmer.ahk
; Config file
#Include config.ini

~LButton:: ; TRIGGER THE MACRO
SCRIPT = ON
Sleep 1 ; MAKE SURE THAT THE WINDOW MADE A TRANSITION
IfWinActive, ahk_exe javaw.exe ; VERIFY IF WE ARE IN MINECRAFT
	{ 
	MouseGetPos, Mouse_Position_X, Mouse_Position_Y
	LoopCount := 1
	Loop, 9 ; CHECK IF THERE'S A CORRESPONDING TILE TO MOUSE
		{	
		if (Mouse_Position_X > Crafting_Table_Slot%LoopCount%_X1) AND (Mouse_Position_X < Crafting_Table_Slot%LoopCount%_X2) AND (Mouse_Position_Y > Crafting_Table_Slot%LoopCount%_Y1) AND (Mouse_Position_Y < Crafting_Table_Slot%LoopCount%_Y2)
			{
			Slot_%LoopCount%_Selected = 1
			BeepFrequency := LoopCount*100
			SoundBeep, %BeepFrequency%, 50
			}
		LoopCount++
		}
	if (Mouse_Position_X > Craft_Output_X1) AND (Mouse_Position_X < Craft_Output_X2) AND (Mouse_Position_Y > Craft_Output_Y1) AND (Mouse_Position_Y < Craft_Output_Y2)
		{ ; IF ON OUTPUT TILE, THEN CRAFT AND REINIT
		KeyWait, LButton, U
		Gosub Craft
		LoopCount := 1
		Loop, 9
			{
			Slot_%LoopCount%_Selected = 0
			LoopCount++
			}
		}
	}
Return

~RButton::
SCRIPT = OFF
Return 

^Numpad9::
Sleep 1
IfWinActive, ahk_exe javaw.exe
Gosub BorderDetection

