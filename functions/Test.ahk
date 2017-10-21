#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include CallFunction.ahk
^Numpad9:: Reload

^Numpad1::
CallFunction(WaitForStart)
InterfaceDetection()
InterfaceCalculation()
