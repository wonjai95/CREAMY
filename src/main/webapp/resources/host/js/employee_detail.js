$("document").ready(function(){
	
	// 근태 월달력의 default value 지정하기
	var currentMonth = new Date().toISOString().slice(0, 7);
	console.log("currentMonth : " + currentMonth);
	
	$("input[id=currentMonth]").val(currentMonth);
	
});