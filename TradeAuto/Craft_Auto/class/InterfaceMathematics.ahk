InterfaceMathematics:
Interface_Size_X := Right_Border_Position - Left_Border_Position
Interface_Size_Y := Bottom_Border_Position - Top_Border_Position 
Previous_Trade_X := Left_Border_Position + (Interface_Size_X*0.12)
Previous_Trade_Y := Top_Border_Position + (Interface_Size_Y*0.18)
Next_Trade_X := Left_Border_Position + (Interface_Size_X*0.88)
Next_Trade_Y := Previous_Trade_Y
Input_Slot_1_X := Left_Border_Position + (Interface_Size_X*0.24)
Input_Slot_1_Y := Top_Border_Position + (Interface_Size_Y*0.365)
Input_Slot_2_X := Left_Border_Position + (Interface_Size_X*0.39)
Input_Slot_2_Y := Input_Slot_1_Y
Output_Trade_X := Left_Border_Position + (Interface_Size_X*0.74)
Output_Trade_Y := Input_Slot_1_Y
First_Inventory_Slot_Position_X := Left_Border_Position + (Interface_Size_X*0.075)
First_Inventory_Slot_Position_Y := Top_Border_Position + (Interface_Size_Y*0.555)
Inventory_Offset := Interface_Size_Y*0.1125
HotBar_Offset := Interface_Size_Y*0.025
OutSide_Interface_X := Left_Border_Position*0.7
OutSide_Interface_Y := Half_Window_Height
Return