$logfile = @ScriptDir & "\windowlog.txt"

$title = WinGetTitle("[ACTIVE]")

FileWriteLine($logfile, $title)

ShellExecute($logfile)

