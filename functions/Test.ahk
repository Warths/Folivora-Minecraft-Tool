#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SendMode Event
#Include CallFunction.ahk
#Include Jingle.ahk
#Include Interface.ahk
#Include Tips.ahk
#Include RessourcePack.ahk
#Include Initialization.ahk
#Include InventoryKey.ahk
^Numpad9:: Reload

^Numpad1::
CheckTrigger()
RessourcePack()
AccessInterface()