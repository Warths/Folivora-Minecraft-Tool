SlotCalculator: ; CALCULE LA POSITION DU SLOT CIBLE
Requested_Slot_X := First_Inventory_Slot_Position_X + Inventory_Offset * Slot_Request_X
Requested_Slot_Y := First_Inventory_Slot_Position_Y + Inventory_Offset * Slot_Request_Y
If Slot_Request_Y > 2
	Requested_Slot_Y += HotBar_Offset
Return