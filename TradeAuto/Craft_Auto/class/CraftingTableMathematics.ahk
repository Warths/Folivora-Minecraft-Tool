CraftingTableMathematics:

Interface_Width := Right_Border_Position - Left_Border_Position
Interface_Height := Bottom_Border_Position - Top_Border_Position

; OUTPUT SQUARE POSITION
Craft_Output_X1 := Left_Border_Position + (Interface_Width*0.688)
Craft_Output_Y1 := Top_Border_Position + (Interface_Height*0.175)
Craft_Output_X2 := Left_Border_Position + (Interface_Width*0.829)
Craft_Output_Y2 := Top_Border_Position + (Interface_Height*0.325)
Craft_Output_X := (Craft_Output_X1 + Craft_Output_X2)/2
Craft_Output_Y := (Craft_Output_Y1 + Craft_Output_Y2)/2
; CRAFTING SLOT 1 SQUARE POSITION
Crafting_Table_Slot1_X1 := Left_Border_Position + (Interface_Width*0.158)
Crafting_Table_Slot1_Y1 := Top_Border_Position + (Interface_Height*0.087)
Crafting_Table_Slot1_X2 := Left_Border_Position + (Interface_Width*0.253)
Crafting_Table_Slot1_Y2 := Top_Border_Position + (Interface_Height*0.188)
Crafting_Table_Slot1_X := (Crafting_Table_Slot1_X1 + Crafting_Table_Slot1_X2)/2
Crafting_Table_Slot1_Y := (Crafting_Table_Slot1_Y1 + Crafting_Table_Slot1_Y2)/2
; CRAFTING SLOT 2 SQUARE POSITION
Crafting_Table_Slot2_X1 := Left_Border_Position + (Interface_Width*0.264)
Crafting_Table_Slot2_Y1 := Crafting_Table_Slot1_Y1
Crafting_Table_Slot2_X2 := Left_Border_Position + (Interface_Width*0.359)
Crafting_Table_Slot2_Y2 := Crafting_Table_Slot1_Y2
Crafting_Table_Slot2_X := (Crafting_Table_Slot2_X1 + Crafting_Table_Slot2_X2)/2
Crafting_Table_Slot2_Y := (Crafting_Table_Slot2_Y1 + Crafting_Table_Slot2_Y2)/2
; CRAFTING SLOT 3 SQUARE POSITION
Crafting_Table_Slot3_X1 := Left_Border_Position + (Interface_Width*0.37)
Crafting_Table_Slot3_Y1 := Crafting_Table_Slot1_Y1
Crafting_Table_Slot3_X2 := Left_Border_Position + (Interface_Width*0.465)
Crafting_Table_Slot3_Y2 := Crafting_Table_Slot1_Y2
Crafting_Table_Slot3_X := (Crafting_Table_Slot3_X1 + Crafting_Table_Slot3_X2)/2
Crafting_Table_Slot3_Y := (Crafting_Table_Slot3_Y1 + Crafting_Table_Slot3_Y2)/2
; CRAFTING SLOT 4 SQUARE POSITION
Crafting_Table_Slot4_X1 := Crafting_Table_Slot1_X1
Crafting_Table_Slot4_Y1 := Top_Border_Position + (Interface_Height*0.199)
Crafting_Table_Slot4_X2 := Crafting_Table_Slot1_X2
Crafting_Table_Slot4_Y2 := Top_Border_Position + (Interface_Height*0.3)
Crafting_Table_Slot4_X := (Crafting_Table_Slot4_X1 + Crafting_Table_Slot4_X2)/2
Crafting_Table_Slot4_Y := (Crafting_Table_Slot4_Y1 + Crafting_Table_Slot4_Y2)/2
; CRAFTING SLOT 5 SQUARE POSITION
Crafting_Table_Slot5_X1 := Crafting_Table_Slot2_X1
Crafting_Table_Slot5_Y1 := Crafting_Table_Slot4_Y1
Crafting_Table_Slot5_X2 := Crafting_Table_Slot2_X2
Crafting_Table_Slot5_Y2 := Crafting_Table_Slot4_Y2
Crafting_Table_Slot5_X := (Crafting_Table_Slot5_X1 + Crafting_Table_Slot5_X2)/2
Crafting_Table_Slot5_Y := (Crafting_Table_Slot5_Y1 + Crafting_Table_Slot5_Y2)/2
; CRAFTING SLOT 6 SQUARE POSITION
Crafting_Table_Slot6_X1 := Crafting_Table_Slot3_X1
Crafting_Table_Slot6_Y1 := Crafting_Table_Slot4_Y1
Crafting_Table_Slot6_X2 := Crafting_Table_Slot3_X2
Crafting_Table_Slot6_Y2 := Crafting_Table_Slot4_Y2
Crafting_Table_Slot6_X := (Crafting_Table_Slot6_X1 + Crafting_Table_Slot6_X2)/2
Crafting_Table_Slot6_Y := (Crafting_Table_Slot6_Y1 + Crafting_Table_Slot6_Y2)/2
; CRAFTING SLOT 7 SQUARE POSITION
Crafting_Table_Slot7_X1 := Crafting_Table_Slot1_X1
Crafting_Table_Slot7_Y1 := Top_Border_Position + (Interface_Height*0.312)
Crafting_Table_Slot7_X2 := Crafting_Table_Slot1_X2
Crafting_Table_Slot7_Y2 := Top_Border_Position + (Interface_Height*0.412)
Crafting_Table_Slot7_X := (Crafting_Table_Slot7_X1 + Crafting_Table_Slot7_X2)/2
Crafting_Table_Slot7_Y := (Crafting_Table_Slot7_Y1 + Crafting_Table_Slot7_Y2)/2
; CRAFTING SLOT 8 SQUARE POSITION
Crafting_Table_Slot8_X1 := Crafting_Table_Slot2_X1
Crafting_Table_Slot8_Y1 := Crafting_Table_Slot7_Y1
Crafting_Table_Slot8_X2 := Crafting_Table_Slot2_X2
Crafting_Table_Slot8_Y2 := Crafting_Table_Slot7_Y2
Crafting_Table_Slot8_X := (Crafting_Table_Slot8_X1 + Crafting_Table_Slot8_X2)/2
Crafting_Table_Slot8_Y := (Crafting_Table_Slot8_Y1 + Crafting_Table_Slot8_Y2)/2
; CRAFTING SLOT 9 SQUARE POSITION
Crafting_Table_Slot9_X1 := Crafting_Table_Slot3_X1
Crafting_Table_Slot9_Y1 := Crafting_Table_Slot7_Y1
Crafting_Table_Slot9_X2 := Crafting_Table_Slot3_X2
Crafting_Table_Slot9_Y2 := Crafting_Table_Slot7_Y2
Crafting_Table_Slot9_X := (Crafting_Table_Slot9_X1 + Crafting_Table_Slot9_X2)/2
Crafting_Table_Slot9_Y := (Crafting_Table_Slot9_Y1 + Crafting_Table_Slot9_Y2)/2
; HOTBAR Y GLOBAL POSITION
Hotbar_Y1 := Top_Border_Position + (Interface_Height*0.869)
Hotbar_Y2 := Top_Border_Position + (Interface_Height*0.969)
Hotbar_Y := (Hotbar_Y1 + Hotbar_Y2)/2
; HOTBAR 1 SQUARE POSITION
Hotbar_Slot1_X1 := Left_Border_Position + (Interface_Width*0.029)
Hotbar_Slot1_X2 := Left_Border_Position + (Interface_Width*0.124)
Hotbar_Slot1_X := (Hotbar_Slot1_X1 + Hotbar_Slot1_X2)/2
; HOTBAR 2 SQUARE POSITION
Hotbar_Slot2_X1 := Left_Border_Position + (Interface_Width*0.135)
Hotbar_Slot2_X2 := Left_Border_Position + (Interface_Width*0.23)
Hotbar_Slot2_X := (Hotbar_Slot2_X1 + Hotbar_Slot2_X2)/2
; HOTBAR 3 SQUARE POSITION
Hotbar_Slot3_X1 := Left_Border_Position + (Interface_Width*0.241)
Hotbar_Slot3_X2 := Left_Border_Position + (Interface_Width*0.336)
Hotbar_Slot3_X := (Hotbar_Slot3_X1 + Hotbar_Slot3_X2)/2
; HOTBAR 4 SQUARE POSITION
Hotbar_Slot4_X1 := Left_Border_Position + (Interface_Width*0.347)
Hotbar_Slot4_X2 := Left_Border_Position + (Interface_Width*0.441)
Hotbar_Slot4_X := (Hotbar_Slot4_X1 + Hotbar_Slot4_X2)/2
; HOTBAR 5 SQUARE POSITION
Hotbar_Slot5_X1 := Left_Border_Position + (Interface_Width*0.453)
Hotbar_Slot5_X2 := Left_Border_Position + (Interface_Width*0.547)
Hotbar_Slot5_X := (Hotbar_Slot5_X1 + Hotbar_Slot5_X2)/2
; HOTBAR 6 SQUARE POSITION
Hotbar_Slot6_X1 := Left_Border_Position + (Interface_Width*0.559)
Hotbar_Slot6_X2 := Left_Border_Position + (Interface_Width*0.653)
Hotbar_Slot6_X := (Hotbar_Slot6_X1 + Hotbar_Slot6_X2)/2
; HOTBAR 7 SQUARE POSITION
Hotbar_Slot7_X1 := Left_Border_Position + (Interface_Width*0.664)
Hotbar_Slot7_X2 := Left_Border_Position + (Interface_Width*0.759)
Hotbar_Slot7_X := (Hotbar_Slot7_X1 + Hotbar_Slot7_X2)/2
; HOTBAR 8 SQUARE POSITION
Hotbar_Slot8_X1 := Left_Border_Position + (Interface_Width*0.77)
Hotbar_Slot8_X2 := Left_Border_Position + (Interface_Width*0.865)
Hotbar_Slot8_X := (Hotbar_Slot8_X1 + Hotbar_Slot8_X2)/2
; HOTBAR 9 SQUARE POSITION
Hotbar_Slot9_X1 := Left_Border_Position + (Interface_Width*0.876)
Hotbar_Slot9_X2 := Left_Border_Position + (Interface_Width*0.971)
Hotbar_Slot9_X := (Hotbar_Slot9_X1 + Hotbar_Slot9_X2)/2
Return