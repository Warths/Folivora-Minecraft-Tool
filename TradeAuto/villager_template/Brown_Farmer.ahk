Brown_Farmer:
; ECHANGE WHEAT
Slot_Request_X = 0
Slot_Request_Y = 3
Gosub MoveItem
Slot_Request_X = 0
Slot_Request_Y = 2
Gosub MoveItem
Gosub Trade
Slot_Request_X = 0
Slot_Request_Y = 1
Gosub MoveItem
Slot_Request_Y = 0
Gosub MoveItem
Gosub Trade
Slot_Request_X = 1
Slot_Request_Y = 3
Gosub MoveItem
Slot_Request_X = 1
Slot_Request_Y = 2
Gosub MoveItem
Gosub Trade
Slot_Request_X = 1
Slot_Request_Y = 1
Gosub MoveItem
Slot_Request_X = 1
Slot_Request_Y = 0
Gosub MoveItem
Gosub Trade
;FIN ECHANGE WHEAT
;ECHANGE POTATE
Slot_Request_X = 2
Slot_Request_Y = 3
Gosub MoveItem
Slot_Request_X = 2
Slot_Request_Y = 2
Gosub MoveItem
Gosub Trade
Slot_Request_X = 2
Slot_Request_Y = 1
Gosub MoveItem
Slot_Request_X = 2
Slot_Request_Y = 0
Gosub MoveItem
Gosub Trade
Slot_Request_X = 3
Slot_Request_Y = 3
Gosub MoveItem
Slot_Request_X = 3
Slot_Request_Y = 2
Gosub MoveItem
Gosub Trade
;FIN ECHANGE POTATE

;ECHANGE CAROTTES
Slot_Request_X = 3
Slot_Request_Y = 1
Gosub MoveItem
Slot_Request_X = 3
Slot_Request_Y = 0
Gosub MoveItem
Gosub Trade
Slot_Request_X = 4
Slot_Request_Y = 3
Gosub MoveItem
Slot_Request_X = 4
Slot_Request_Y = 2
Gosub MoveItem
Gosub Trade
Slot_Request_X = 4
Slot_Request_Y = 1
Gosub MoveItem
Slot_Request_X = 4
Slot_Request_Y = 0
Gosub MoveItem
Gosub Trade
;FIN ECHANGE CAROTTES

;ECHANGE MELONS
Slot_Request_X = 5
Slot_Request_Y = 3
Gosub MoveItem
Slot_Request_X = 5
Slot_Request_Y = 2
Gosub MoveItem
Gosub Trade
Slot_Request_X = 5
Slot_Request_Y = 1
Gosub MoveItem
Gosub Trade
;FIN ECHANGE MELONS

;ECHANGE CITROUILLES
Slot_Request_X = 5
Slot_Request_Y = 0
Gosub MoveItem
Slot_Request_X = 6
Slot_Request_Y = 1
Gosub MoveItem
Gosub Trade
Slot_Request_X = 6
Slot_Request_Y = 0
Gosub MoveItem
Gosub Trade
;FIN ECHANGE CITROUILLES
GoSub Reinit