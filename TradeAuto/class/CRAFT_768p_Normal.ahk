^Numpad1::
;========= Les valeurs apr�s le signe "=" sont � modifier selon votre r�solution et taille d'interface ===
C1X=582 ; Coordonn�e X du premier slot de craft (en haut a gauche)
L1Y=267 ; Coordonn�e Y du premier slot de craft (en haut a gauche)
SX=538 ; Coordonn�e X du premier slot de la HotBar 
SY=517 ; Coordonn�e Y du premier slot de la HotBar 
CRAFTX=768 ; Coordonn�e X de la sortie du Craft
OFFSET=32 ; D�calage entre chaque slot. D�pend de la taille d'interface. (Large = 54, Normal = 32, Small = 18)
;==========================================================================================================

XC:=C1X
YC:=L1Y
SetDefaultMouseSpeed, 1
Loop, 3
	{
		Loop, 3
			{
				MouseClick, Right, SX, SY 
				MouseClick, Left, XC, YC
				XC:=XC+OFFSET
				SX:=SX+OFFSET
			}
		XC:=C1X
		YC:=YC+OFFSET
	}

YC:=L1Y+OFFSET
MouseClick, Left, CRAFTX, YC
Click 32
MouseClick, Left, 50, YC
XC:=C1X
YC:=L1Y
Send {Shift Down}
Loop, 3
	{
			Loop, 3
			{
				MouseClick, Left, XC, YC
				XC:=XC+OFFSET
			}
		XC:=C1X
		YC:=YC+OFFSET
	}
Sleep 20
Send {Shift Up}
