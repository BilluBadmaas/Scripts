$file = FileOpen(@MyDocumentsDir & "\log.txt", 1)

$date = @YEAR & "-" & @MON & "-" & @MDAY
$time = @HOUR & ":" & @MIN & ":" & @SEC

FileWriteLine($file, "Date: " & $date)
FileWriteLine($file, "Time: " & $time)
FileWriteLine($file, "Name: Billu Badmaas")
FileWriteLine($file, "Roll No: 20")
FileWriteLine($file, "")
FileWriteLine($file, "Script Executed Successfully!")

FileClose($file)

ShellExecute(@MyDocumentsDir & "\log.txt")
