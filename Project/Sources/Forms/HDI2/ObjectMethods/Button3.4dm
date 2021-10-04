var $rectangle : Object
var $count : Integer
var $property : Text

For each ($rectangle; Form:C1466.rectangles)
	$count:=0
	For each ($property; $rectangle)
		$count:=$count+1
	End for each 
	ALERT:C41($rectangle.name+" has "+String:C10($count)+" properties.")
End for each 


