$phrase = InputBox("Input", "Enter Phrase")
$num = InputBox("Input", "Enter Number of Times")

For $i = 1 To $num
	Send($phrase & "{ENTER}")

Next
