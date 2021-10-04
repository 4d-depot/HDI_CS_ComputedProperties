If (Form:C1466.trace)
	TRACE:C157
End if 

If (Shift down:C543)
	Form:C1466.rectangles:=Form:C1466.rectangles.query("surface < 10000")
Else 
	Form:C1466.rectangles:=Form:C1466.rectangles.query("surface >= 10000")
End if 