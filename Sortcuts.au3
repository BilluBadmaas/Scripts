$folder = @DesktopDir & "\Shortcuts"
DirCreate($folder)

$files = FileFindFirstFile(@DesktopDir & "\*.lnk")

$count = 0

While 1
    $file = FileFindNextFile($files)
    If @error Then ExitLoop

    FileMove(@DesktopDir & "\" & $file, $folder & "\" & $file)
    $count = $count + 1
WEnd

FileClose($files)

MsgBox(0, "Success", $count & " Shortcut Files Moved to the 'Shortcuts' Folder on Desktop.")
