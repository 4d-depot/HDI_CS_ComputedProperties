Class constructor($width : Integer; $height : Integer)
	
	// code sample to create
	// var $rect : cs.Rectangle
	// $rect:=cs.Rectangle.new(20;30)
	
	This:C1470.width:=$width
	This:C1470.height:=$height
	
	// Computed properties
	
	// "GETTERS"
	
Function get perimeter()->$perimeter : Real
	
	$perimeter:=(This:C1470.width+This:C1470.height)*2
	
Function get surface()->$surface : Real
	
	$surface:=This:C1470.width*This:C1470.height
	
	
	// "SETTERS"
	
Function set perimeter($perimeter : Real)
	
	var $ratio : Real
	$ratio:=This:C1470.width/This:C1470.height
	This:C1470.height:=$perimeter/(2*(1+$ratio))
	This:C1470.width:=($perimeter*$ratio)/(2*(1+$ratio))
	
Function set surface($surface : Real)
	
	var $ratio : Real
	$ratio:=This:C1470.width/This:C1470.height
	This:C1470.height:=($surface/$ratio)^(1/2)
	This:C1470.width:=($surface*$ratio)^(1/2)
	