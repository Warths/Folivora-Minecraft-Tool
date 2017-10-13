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
; Villager templates
#Include villager_template/Brown_Farmer.ahk
; Config file
#Include config.ini

~LButton::
Sleep 1
IfWinActive, ahk_exe javaw.exe
	{ 
	MouseGetPos, Mouse_Position_X, Mouse_Position_Y
	if (Mouse_Position_X > Crafting_Table_Slot1_X1) AND (Mouse_Position_X < Crafting_Table_Slot1_X2) AND (Mouse_Position_Y > Crafting_Table_Slot1_Y1) AND (Mouse_Position_Y < Crafting_Table_Slot1_Y2)
		{
		
		}
	}
Return

^Numpad9::
Sleep 1
IfWinActive, ahk_exe javaw.exe
Gosub BorderDetection

