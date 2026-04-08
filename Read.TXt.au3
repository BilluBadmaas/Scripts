$file = FileOpen(@DesktopDir & "\Billu.txt", 0)

$content = FileRead($file)

FileClose($file)

MsgBox(0, "File Content", $content)



