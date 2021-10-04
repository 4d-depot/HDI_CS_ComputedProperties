If (Form:C1466.trace)
	TRACE:C157
End if 

If (Shift down:C543)
	Form:C1466.rectangles:=Form:C1466.rectangles.orderBy("perimeter desc")
Else 
	Form:C1466.rectangles:=Form:C1466.rectangles.orderBy("perimeter asc")
End if 