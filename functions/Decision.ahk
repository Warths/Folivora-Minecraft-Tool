#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
^Numpad9:: Reload

StartDetection()
	{
		Loop
			{
				KeyWait, RButton, D
				KeyWait, LButton, D T0.5
				if (ErrorLevel = 0)
					{						
						return true
					}
			}
	}

^Numpad1::
StartDetection()
if StartDetection()
{
MsgBox, true
}
