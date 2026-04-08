$name = "Billu Badmaas"
$roll = "20262497320"

; Find all A or a in the name
$aCount = StringRegExp($name, "[Aa]", 3)

; Find all digits in roll number
$numCount = StringRegExp($roll, "\d", 3)

MsgBox(0, "Result", "Found " & UBound($aCount) & " 'A' in Name" & @CRLF & _
"Found " & UBound($numCount) & " numbers in Roll No")
