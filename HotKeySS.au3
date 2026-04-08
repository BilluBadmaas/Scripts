#include <ScreenCapture.au3>

HotKeySet("{PRINTSCREEN}", "TakeShot")

While 1
    Sleep(100)
WEnd

Func TakeShot()
    $time = @YEAR & @MON & @MDAY & "_" & @HOUR & @MIN & @SEC
    $file = @DesktopDir & "\Screenshot_" & $time & ".png"

    _ScreenCapture_Capture($file)

    MsgBox(0,"Screenshot","Screenshot saved to Desktop")
EndFunc
