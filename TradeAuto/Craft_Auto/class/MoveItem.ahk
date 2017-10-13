MoveItem: ; CALCULE LA POSITION SLOTREQUEST ET ENVOIE LES OBJETS 
;DANS LE SLOT CORRESPONDANT
Gosub SlotCalculator
MouseMove, %Requested_Slot_X%, %Requested_Slot_Y%
MouseClick, %Right_Click%
MouseMove, Input_Slot_1_X, Input_Slot_1_Y
MouseClick, %Left_Click%
Return