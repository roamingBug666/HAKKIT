Dim Response

Response = MsgBox("A suspicious malicious script has been located on your SYSTEM32 root files. Delete?", 4+32+4096, "Virus detected")

If Response = vbYes Then
	WScript.Sleep(5000)
    msgbox "Deletion failed",1+48+4096,"Deleting..."
	msgbox "SYSTEM WAS OVERRIDDEN. Please contact your software administrator.",1+16+4096,"ERROR ID: 1"
	msgbox "SYSTEM: is good!!. Please contact: Bill Gates, stop making money and fix ur software!",1+64+4096,"all good!"
	do
	msgbox "HIAHAHHAIHAIHAHIHAIHAAA!!!.",1+16+4096,"everything is perfectly fine"
	loop
Else
    msgbox "SYSTEM WAS OVERRIDDEN. Please contact your software administrator.",1+16+4096,"ERROR ID: 1"
	msgbox "SYSTEM: is good!!. Please contact: Bill Gates, stop making money and fix ur software!.",1+64+4096,"all good!"
	do
	msgbox "HIAHAHHAIHAIHAHIHAIHAAA!!!.",1+16+4096,"everything is perfectly fine"
	loop
End If