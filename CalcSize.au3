$folder = FileSelectFolder("Select Folder", "")

$size = DirGetSize($folder)

MsgBox(0, "Folder Size", "Total Size: " & $size & " BYTES")
