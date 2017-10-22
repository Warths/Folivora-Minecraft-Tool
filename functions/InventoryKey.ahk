#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

InventoryKey()
	{
		L1 = E
		L2 = I
		L3 = C
		L4 = Q
		L5 = R
		L6 = K
		L7 = TAB
		L8 = RShift
		L9 = MButton
		L10 = A
		L11 = Z
		L12 = S
		L13 = D
		L14 = W
		L15 = X
		L16 = V
		L17 = G
		L18 = T
		L19 = Y
		L20 = H
		L21 = B
		L22 = N
		L23 = F
		L24 = J
		L25 = L
		L26 = M
		L27 = P
		L28 = O
		L29 = LShift
		L30 = RCtrl
		L31 = LCtrl
		L32 = RAlt
		L33 = LAlt
		L34 = U
		L35 = Enter
		countletter = 1
		checkbreak = false
		Loop, 35
			{
				letter := % "L" . countletter
				letter2 := %letter%
				if (countletter = 9)
					{
						Send, {MButton down}
						Send, {MButton up}
					}
				else
					{
						Send {%letter2%}
					}
				Sleep 100
				if InterfaceDetection()
					{
						return %letter2%
					}
				countletter++
			}
		if (checkbreak = false)
			{
				Tip("NoMatchingInventoryKey")
				return false
			}
	}