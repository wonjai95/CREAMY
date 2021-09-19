$("document").ready(function() {
	
	// 출근 클릭
	$("#employee_in").click(function() {
		$(".form-check-input").show();
		$(".form-check-label").html("지각");
		$("input[name=late_early]").val("지각");
		
	});
	
	// 퇴근 클릭
	$("#employee_out").click(function() {
		$(".form-check-input").show();
		$(".form-check-label").html("조퇴");
		$("input[name=late_early]").val("조퇴");
	});
	
	// 지각, 조퇴 체크 ??????????????/ 내일 해결해봅시다....
	$(".form-check-input").click(function() {
		if($(this).is(":checked")) {
			if($("input[name=late_early]").val == "지각") {
				console.log("지각");
				$("input[name=inout_time_setting]").val("late");
			} else {
				console.log("조퇴");
				$("input[name=inout_time_setting]").val("leave_early");
			}
		}
		console.log($("input[name=inout_time_setting]").val());
	});
	
	
});