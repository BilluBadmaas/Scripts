$time = InputBox("Shutdown Timer", "Enter Minutes Before Shutdown")

$seconds = $time * 60

MsgBox(0, "Shutdown Scheduled", "System will Shut Down in " & $time & " Minutes.")

Run("shutdown -s -t " & $seconds)
