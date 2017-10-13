BorderDetection:
WinGetPos, , , Window_Width, Window_Height, A ; SAVE THE WINDOW SIZE
Half_Window_Width := Window_Width/2 
Half_Window_Height := Window_Height/2
MouseMove, 100, Half_Window_Height ; MOVE THE MOUSE OUT OF THE INTERFACE
Detect_Top_Border: ; SAVE THE TOP BORDER POSITION
Top_Border_Position = 0
Loop{
	Top_Border_Position := Top_Border_Position + Accuracy
	PixelGetColor, ColorBuffer, %Half_Window_Width%, %Top_Border_Position% 
	if ColorBuffer = 0xC6C6C6
		Break
}
	
Detect_Bottom_Border: ; SAVE THE BOTTOM BORDER POSITION
Bottom_Border_Position := Window_Height
Loop{
	Bottom_Border_Position := Bottom_Border_Position - Accuracy
	PixelGetColor, ColorBuffer, %Half_Window_Width%, %Bottom_Border_Position% 
	if ColorBuffer = 0xC6C6C6
		Break
}

	
Detect_Left_Border: ; SAVE THE LEFT BORDER POSITION
Left_Border_Position := 0
Loop{
	Left_Border_Position := Left_Border_Position + Accuracy
	PixelGetColor, ColorBuffer, %Left_Border_Position%, %Half_Window_Height% 
	if ColorBuffer = 0xC6C6C6
		Break
}
Detect_Right_Border: ; SAVE THE RIGHT BORDER POSITION
Right_Border_Position := Window_Width
Loop{
	Right_Border_Position := Right_Border_Position - Accuracy
	PixelGetColor, ColorBuffer, %Right_Border_Position%, %Half_Window_Height% 
	if ColorBuffer = 0xC6C6C6
		Break

}
Return