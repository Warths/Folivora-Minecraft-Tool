#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^Numpad9:: Reload

^Numpad1::
 SoundPlay, %A_ScriptDir%\sounds\Error.wav
 sleep 3000
 SoundPlay, %A_ScriptDir%\sounds\CriticalError.wav
 sleep 3000
 SoundPlay, %A_ScriptDir%\sounds\Select.wav
 sleep 300  
 SoundPlay, %A_ScriptDir%\sounds\Select.wav
 sleep 300  
 SoundPlay, %A_ScriptDir%\sounds\Select.wav
 sleep 300  
 SoundPlay, %A_ScriptDir%\sounds\Select.wav
 sleep 300 
 SoundPlay, %A_ScriptDir%\sounds\Select.wav
 sleep 300  
 SoundPlay, %A_ScriptDir%\sounds\Select.wav
 sleep 300  
 SoundPlay, %A_ScriptDir%\sounds\Select.wav
 sleep 300 
 SoundPlay, %A_ScriptDir%\sounds\Select.wav
 sleep 300  
 SoundPlay, %A_ScriptDir%\sounds\Select.wav
 sleep 300  
 SoundPlay, %A_ScriptDir%\sounds\Select.wav
 sleep 3000
  SoundPlay, %A_ScriptDir%\sounds\Success.wav
 sleep 3000
  SoundPlay, %A_ScriptDir%\sounds\Unselect.wav
 sleep 3000
 
 