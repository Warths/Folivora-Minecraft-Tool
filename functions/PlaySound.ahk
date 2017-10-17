#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

PlayNote(note, pitch, length)
    {
		if(note = "Do" or note = "C")
			{    
				SoundBeep 16.35*exp((pitch)*ln(2)), length
			} 
		else if(note = "Do#" or note = "C#")
			{    
				SoundBeep 17.32*exp((pitch)*ln(2)), length
			}  
		else if(note = "Ré" or note = "D")
			{    
				SoundBeep 18.35*exp((pitch)*ln(2)), length
			} 
		else if(note = "Ré#" or note = "D#")
			{    
				SoundBeep 19.45*exp((pitch)*ln(2)), length
			} 
		else if(note = "Mi" or note = "E")
			{    
				SoundBeep 20.60*exp((pitch)*ln(2)), length
			} 
		else if(note = "Fa" or note = "F")
			{    
				SoundBeep 21.83*exp((pitch)*ln(2)), length
			} 
		else if(note = "Fa#" or note = "F#")
			{    
				SoundBeep 23.12*exp((pitch)*ln(2)), length
			} 
		else if(note = "Sol" or note = "G")
			{    
				SoundBeep 24.5*exp((pitch)*ln(2)), length
			} 
		else if(note = "Sol#" or note = "G#")
			{    
				SoundBeep 25.96*exp((pitch)*ln(2)), length
			} 
		else if(note = "La" or note = "A")
			{    
				SoundBeep 27.50*exp((pitch)*ln(2)), length
			} 
		else if(note = "La#" or note = "A#")
			{    
				SoundBeep 29.14*exp((pitch)*ln(2)), length
			} 
		else if(note = "Si" or note = "B")
			{    
				SoundBeep 30.87*exp((pitch)*ln(2)), length
			}
	}