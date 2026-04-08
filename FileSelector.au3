#include <GUIConstantsEx.au3>

$gui = GUICreate("File Selector", 400, 200)
$input = GUICtrlCreateInput("", 50, 50, 300, 25)
$button = GUICtrlCreateButton("Select File", 150, 100, 100, 30)

GUISetState(@SW_SHOW)

While 1
    $msg = GUIGetMsg()

    If $msg = $GUI_EVENT_CLOSE Then Exit

    If $msg = $button Then
        $file = FileOpenDialog("Select a File", @DesktopDir, "All (*.*)")
        GUICtrlSetData($input, $file)
    EndIf
WEnd
