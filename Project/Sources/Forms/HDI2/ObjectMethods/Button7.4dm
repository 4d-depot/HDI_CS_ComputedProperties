If (Form:C1466.trace)
	TRACE:C157
End if 

If (Shift down:C543)
	Form:C1466.rectangles:=Form:C1466.rectangles.query("perimeter < 200")
Else 
	Form:C1466.rectangles:=Form:C1466.rectangles.query("perimeter >= 200")
End if 