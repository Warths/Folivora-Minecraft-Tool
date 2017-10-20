#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^Numpad9:: Reload

^Numpad1::
 Jingle(CriticalError)
 sleep 3000
 Jingle(Select)
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
 Jingle(Unselect)
 sleep 3000 
 Jingle(Success)
 sleep 3000
 Jingle(Error)

 
 