Trade:
PixelGetColor, ColorBuffer, Output_Trade_X, Output_Trade_Y
If (ColorBuffer != "0x8B8B8B"){
	MouseMove, Output_Trade_X, Output_Trade_Y
	Loop 6{
	Send A
	}
}
Gosub ClearInputSlot
Return