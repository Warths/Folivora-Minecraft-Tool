;Class
#Include class/PrimaryHand.ahk
#Include class/BorderDetection.ahk
#Include class/InterfaceMathematics.ahk
#Include class/MoveItem.ahk
#Include class/Trade.ahk
#Include class/ClearInputSlot.ahk
#Include class/Reinit.ahk
#Include class/SlotCalculator.ahk
; Villager templates
#Include villager_template/Brown_Farmer.ahk
; Config file
#Include config.ini


^Numpad5::

Gosub Config
Gosub BorderDetection ; Detect villager interface borders
Gosub InterfaceMathematics ; Calculate the positions of each buttons

Loop{
	If (Script != "OFF"){
	Gosub Brown_Farmer
	} Else {
	Script = NULL
	Return
	}
}
^Numpad6::
SCRIPT = OFF