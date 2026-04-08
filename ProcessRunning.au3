If ProcessExists("notepad.exe") Then
MsgBox(0, "Process", "Notepad is running")
Else
Run("notepad.exe")
EndIf
