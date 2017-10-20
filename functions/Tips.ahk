#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
^Numpad9:: Reload
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
	
Tip(Name)
	{
	if (TipActivated != "NO")
		{
			HideTrayTip()
			
			if(Name = "StartCalibration")
				{
					TrayTip, Calibration Started, Delimiting the Interface..
				}
			else if(Name = "EndCalibration")
				{
					Traytip, Calibration Ended, Calibration ended up successfuly!
				}
			else if(Name = "VillagerInterface")
				{
					Traytip, Interface Detected!, A villager Interface is detected!
				}		
			else if(Name = "CraftingInterface")
				{
					Traytip, Interface Detected!, A Crafting Interface is detected!
				}
			else if(Name = "InventoryInterface")
				{
					Traytip, Interface Detected!, An Inventory Interface is detected!
				}
			else if(Name = "EffectInventoryInterface")
				{
					Traytip, Interface Detected!, You've got effects on your character, can't launch the macro!
				}
		}	
	}	