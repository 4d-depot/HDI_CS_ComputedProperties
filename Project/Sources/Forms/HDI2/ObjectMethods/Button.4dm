var $rectangle : Object

If (Form:C1466.trace)
	TRACE:C157
End if 

For each ($rectangle; Form:C1466.rectangles)
	$rectangle.perimeter:=1000
End for each 

Form:C1466.rectangles:=Form:C1466.rectangles
