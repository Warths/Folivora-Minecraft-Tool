BorderDetection:
WinGetPos, , , Window_Width, Window_Height, A ; SAVE THE WINDOW SIZE
Half_Window_Width := Window_Width/2 
Half_Window_Height := Window_Height/2
MouseMove, 100, Half_Window_Height ; MOVE THE MOUSE OUT OF THE INTERFACE
Detect_Top_Border: ; SAVE THE TOP BORDER POSITION
	PixelSearch, DUMMY, Top_Border_Position, Half_Window_Width, 0, Half_Window_Width, Window_Height, 0xC6C6C6, 0, Fast
Detect_Left_Border: ; SAVE THE LEFT BORDER POSITION
	PixelSearch, Left_Border_Position, DUMMY, 0, Half_Window_Height, Window_Width, Half_Window_Height, 0xC6C6C6, 0, Fast
Detect_Bottom_Border: ; SAVE THE BOTTOM BORDER POSITION
	PixelSearch, DUMMY, Bottom_Border_Position, Half_Window_Width, Top_Border_Position, Half_Window_Width, Window_Height, 0x555555, 0, Fast
Detect_Right_Border: ; SAVE THE RIGHT BORDER POSITION
	PixelSearch, Right_Border_Position, DUMMY, Left_Border_Position, Half_Window_Height, Window_Width, Half_Window_Height, 0x555555, 0, Fast
; SUBSTRACT OFFSET TO RIGTH/BOTTOM POSITION TO COMPENSATE LACK 
; OF PRECISION DUE TO THE ALTERNATE METHOD OF DETECTION
Bottom_Border_Position--
Right_Border_Position--
Gosub CraftingTableMathematics
SoundBeep, 220, 100
Return

