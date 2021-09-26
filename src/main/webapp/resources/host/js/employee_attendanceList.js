/**
 * 
 */

$("document").ready(function(){
	
	$("input[id=currentMonth]").change(function(){
		alert("월 선택");
		
		var header = $("meta[name='_csrf_header']").attr("content");
	    var token = $("meta[name='_csrf']").attr("content");
		var empCode = $("input[name=employee_code]").val();
		var chanMonth = $("input[id=currentMonth]").val();
		
		console.log("empCode : " + empCode);
		console.log("chanMonth : " + chanMonth);
		
		$.ajax({
			url : "employee_attendanceList",
			type : "Post",
			data : "employee_code="+empCode+"&currentMonth="+chanMonth,
			beforeSend : function(jqXHR, settings) {
		          console.log("beforesend 진행");
		          jqXHR.setRequestHeader(header, token);
		    },
		    success : function(result){
		    	$(".attendanceList").html(result);
		    },
		    error : function(error){
		    	alert("다시 시도해주세요.");
		    }
		});
	});
});