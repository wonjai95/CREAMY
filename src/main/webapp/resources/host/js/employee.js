$("document").ready(function() {
	$("tr[class^=employee]").click(function() {
		var thisTr = $(this);
		var thisTd = $(this).children();
		
		var empCode = thisTd.eq(1).val();
		alert(empCode);
	});
	
	
	
});