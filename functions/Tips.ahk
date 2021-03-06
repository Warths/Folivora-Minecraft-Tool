﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

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
			else if(Name = "Interface")
				{
					Traytip, Interface Detected !, Let's check your Ressource Pack !
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
					Traytip, Interface Detected!, You've got effects on your character, cant launch the macro!
				}
			else if(Name = "WaitForTrigger")
				{
					Traytip, Folivora Launched, Waiting for user's command..
				}
			else if(Name = "NotATrigger")
				{
					Traytip, No Interface Detected, Either you didn't want to trigger the macro, or your Ressource Pack is not compatible !
				}
			else if(Name = "WeirdRessourcePack")
				{
					Traytip, Not compatible Ressource Pack, Please use another Ressource Pack !
				}
			else if(Name = "NoMatchingInventoryKey")
				{
					Traytip, Inventory Key not found, Your Inventory Key was not found. Please go to the settings of the macro and write down your Inventory Key !
				}
		}	
	}	