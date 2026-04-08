#include <GUIConstantsEx.au3>

Global $expression = ""

$gui = GUICreate("Calculator", 260, 360)

; Expression display (top)
$exprLabel = GUICtrlCreateLabel("", 20, 10, 220, 40)
GUICtrlSetFont($exprLabel, 12)

; Result display (large)
$resultLabel = GUICtrlCreateLabel("", 20, 40, 220, 50)
GUICtrlSetFont($resultLabel, 22)

$btn7 = GUICtrlCreateButton("7", 20, 100, 40, 40)
$btn8 = GUICtrlCreateButton("8", 70, 100, 40, 40)
$btn9 = GUICtrlCreateButton("9", 120, 100, 40, 40)
$btnDiv = GUICtrlCreateButton("/", 170, 100, 40, 40)

$btn4 = GUICtrlCreateButton("4", 20, 150, 40, 40)
$btn5 = GUICtrlCreateButton("5", 70, 150, 40, 40)
$btn6 = GUICtrlCreateButton("6", 120, 150, 40, 40)
$btnMul = GUICtrlCreateButton("*", 170, 150, 40, 40)

$btn1 = GUICtrlCreateButton("1", 20, 200, 40, 40)
$btn2 = GUICtrlCreateButton("2", 70, 200, 40, 40)
$btn3 = GUICtrlCreateButton("3", 120, 200, 40, 40)
$btnSub = GUICtrlCreateButton("-", 170, 200, 40, 40)

$btn0 = GUICtrlCreateButton("0", 20, 250, 40, 40)
$btnClear = GUICtrlCreateButton("C", 70, 250, 40, 40)
$btnDel = GUICtrlCreateButton("DEL", 120, 250, 40, 40)
$btnAdd = GUICtrlCreateButton("+", 170, 250, 40, 40)

$btnEqual = GUICtrlCreateButton("=", 20, 300, 190, 40)

GUISetState(@SW_SHOW)

While 1
$msg = GUIGetMsg()

If $msg = $GUI_EVENT_CLOSE Then Exit

Switch $msg

Case $btn0
Add("0")
Case $btn1
Add("1")
Case $btn2
Add("2")
Case $btn3
Add("3")
Case $btn4
Add("4")
Case $btn5
Add("5")
Case $btn6
Add("6")
Case $btn7
Add("7")
Case $btn8
Add("8")
Case $btn9
Add("9")

Case $btnAdd
Add("+")
Case $btnSub
Add("-")
Case $btnMul
Add("*")
Case $btnDiv
Add("/")

Case $btnClear
$expression = ""
GUICtrlSetData($exprLabel, "")
GUICtrlSetData($resultLabel, "")

Case $btnDel
$expression = StringTrimRight($expression, 1)
GUICtrlSetData($exprLabel, $expression)

Case $btnEqual
$result = Execute($expression)
GUICtrlSetData($exprLabel, $expression)
GUICtrlSetData($resultLabel, "= " & $result)

EndSwitch

WEnd


Func Add($value)
$expression &= $value
GUICtrlSetData($exprLabel, $expression)
EndFunc
