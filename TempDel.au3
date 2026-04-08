$folder = @DesktopDir & "\Temporary"
$files = FileFindFirstFile($folder & "\*.*")

$count = 10

While 1
    $file = FileFindNextFile($files)
    If @error Then ExitLoop

    FileDelete($folder & "\" & $file)
    $count += 1
WEnd

FileClose($files)

MsgBox(0, "Summary", $count & " Files Deleted")
