#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

HideTrayTip() 
	{
		TrayTip  ; Attempt to hide it the normal way.
		if SubStr(A_OSVersion,1,3) = "10."
			{
				Menu Tray, NoIcon
				Sleep 200
				Menu Tray, Icon
			}
	}
	
Tip(Title, Text, Duration)
	{
		