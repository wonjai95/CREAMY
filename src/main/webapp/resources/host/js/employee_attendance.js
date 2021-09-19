$("document").ready(function() {
	
	// 출근 클릭
	$("#employee_in").click(function() {
		// 클릭시 체크박스 해제
		$("input[type=checkbox]").prop("checked", false);
		
		// 클릭시 버튼 색깔 지정
		$("#employee_out").css("background", "");
		$("#employee_in").css("background", "#20c997");
		$("#employee_in").css("color", "#212529");
		
		// 클릭시 지각 체크박스 보여줌
		$(".form-check-input").show();
		$(".form-check-label").html("지각");
		$("input[name=late_early]").val("지각");
		
	});
	
	// 퇴근 클릭
	$("#employee_out").click(function() {
		// 클릭시 체크박스 해제
		$("input[type=checkbox]").prop("checked", false);
		
		// 클릭시 버튼 색깔 지정
		$("#employee_in").css("background", "");
		$("#employee_out").css("background", "#20c997");
		$("#employee_out").css("color", "#212529");
		
		// 클릭시 조퇴 체크박스 보여줌
		$(".form-check-input").show();
		$(".form-check-label").html("조퇴");
		$("input[name=late_early]").val("조퇴");
	});
	
	// 지각, 조퇴 체크 
	$(".form-check-input").click(function() {
		if($(this).is(":checked")) {
			if($("input[name=late_early]").val() == "지각") {
				// value에 지각(late) 설정
				$("input[name=inout_time_setting]").val("late");
			} else {
				// value에 조퇴(leave_early) 설정
				$("input[name=inout_time_setting]").val("leave_early");
			}
		}
		console.log($("input[name=inout_time_setting]").val());
	});
	
	// 창 닫기 클릭
	$("input[name=window_close]").click(function() {
		window.close();
	});
	
	
});