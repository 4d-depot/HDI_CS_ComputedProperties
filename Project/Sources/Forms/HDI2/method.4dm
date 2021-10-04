var $path; $reference; $color; $material : Text
var $page; $i; $val1; $val2 : Integer
var $pict : Picture
var $o : Object

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.trace:=False:C215
		
		ALL RECORDS:C47([DOC:1])
		ORDER BY:C49([DOC:1]; [DOC:1]Order:4; >)
		GOTO SELECTED RECORD:C245([DOC:1]; 1)
		WParea:=[DOC:1]SampleDoc:2
		
		
		Form:C1466.tabs:=New object:C1471
		Form:C1466.tabs.values:=ds:C1482.DOC.all().orderBy("Order asc").toCollection("Title").extract("Title")
		
		PopulateCollection
		
	: (Form event code:C388=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
	: (Form event code:C388=On Page Change:K2:54)
		
		$page:=FORM Get current page:C276
		//OBJECT SET VISIBLE(*; "btnTrace"; ($page#1) & ($page#4))
		//OBJECT SET VISIBLE(*; "btnHtml"; ($page#1) & ($page#4))
		
		GOTO SELECTED RECORD:C245([DOC:1]; $page)
		WParea:=[DOC:1]SampleDoc:2
		
		
End case 