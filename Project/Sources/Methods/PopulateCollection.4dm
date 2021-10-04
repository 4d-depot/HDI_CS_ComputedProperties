//%attributes = {}
var $i; $width; $height : Integer

Form:C1466.rectangles:=New collection:C1472

For ($i; 1; 50)
	
	$width:=20+((1000+Random:C100)%100)
	$height:=20+((1000+Random:C100)%100)
	Form:C1466.rectangles.push(cs:C1710.Rectangle.new($width; $height))
	
End for 
