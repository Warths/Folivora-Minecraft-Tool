Reinit:
SendMode Event
Send {Escape}
Sleep 2650
Loop {
MouseClick, %Right_Click%
PixelGetColor, ColorBuffer, Input_Slot_1_X, Input_Slot_1_Y
If (ColorBuffer = 0x8B8B8B){
MouseMove, %OutSide_Interface_X%, %OutSide_Interface_Y% 
MouseClick, %Right_Click%
MouseClick, %Left_Click%
Break
}
Sleep 100
}
SendMode %SendMode_Rule%
Return