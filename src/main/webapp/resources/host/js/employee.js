$("document").ready(function() {
	
	// 테이블에서 직원 선택시 직원 코드 hidden에 설정
	$("tr[class^=employee]").click(function() {
		$("tr[class^=employee]").css("background", "");
		
		var thisTr = $(this);
		var thisTd = $(this).children();
		var empCode = thisTd.eq(0).find("input[name^=employee]").val();
		var empName = thisTd.eq(1).find("input[name^=employee]").val();
		var empDepart = thisTd.eq(2).find("input[name^=employee]").val();
		console.log("empCode : " + empCode);
		
		$("input[name=employee_code_hidden]").val(empCode);
		$("input[name=employee_name_hidden]").val(empName);
		$("input[name=employee_depart_hidden]").val(empDepart);
		$(this).css("background", "#20c997");
		
	});
	
	// 직원 등록 버튼 클릭
	$("#employee_enlist_btn").click(function() {
		var empCode = $("input[name=employee_code_hidden]").val();
		console.log(empCode);
		
		var url = "employee_enlist"
		window.open(url, "employee_enlist", "menubar=no, width=800, height=800");
	});
	
	// 근태 버튼 클릭
	$("#employee_attend_btn").click(function() {
		if($("input[name=employee_code_hidden]").val() == 0) {
			alert("직원을 선택하세요!");
			return false;
		} else {
			var empCode = $("input[name=employee_code_hidden]").val();
			var empName = $("input[name=employee_name_hidden]").val();
			console.log(empCode);
			
			var url = "employee_attendance?employee_code=" + empCode + "&employee_name=" + empName;
				window.open(url, "employee_attendance", "menubar=no, width=800, height=800");
		}
	});
	
	// 근무시간 버튼 클릭
	$("#employee_workhours_btn").click(function() {
		if($("input[name=employee_code_hidden]").val() == 0) {
			alert("직원을 선택하세요!");
			return false;
		} else {
			var empCode = $("input[name=employee_code_hidden]").val();
			var empName = $("input[name=employee_name_hidden]").val();
			console.log(empCode);
			
			var url = "employee_workhours?employee_code=" + empCode + "&employee_name=" + empName;
			window.open(url, "employee_workhours", "menubar=no, width=800, height=800");
		}
		
	});
	
	// 휴가 버튼 클릭
	$("#employee_leave_btn").click(function() {
		if($("input[name=employee_code_hidden]").val() == 0) {
			alert("직원을 선택하세요!");
			return false;
		} else {
			var empCode = $("input[name=employee_code_hidden]").val();
			var empName = $("input[name=employee_name_hidden]").val();
			console.log(empCode);
			
			var url = "employee_leave?employee_code=" + empCode + "&employee_name=" + empName;
			window.open(url, "employee_leave", "menubar=no, width=800, height=800");
		}
	});
	
	// 급여계약 버튼 클릭
	$("#employee_contract_btn").click(function() {
		if($("input[name=employee_code_hidden]").val() == 0) {
			alert("직원을 선택하세요!");
			return false;
		} else {
			var empCode = $("input[name=employee_code_hidden]").val();
			var empName = $("input[name=employee_name_hidden]").val();
			console.log(empCode);
			
			var url = "employee_contract?employee_code=" + empCode + "&employee_name=" + empName;
			window.open(url, "employee_contract", "menubar=no, width=800, height=800");
		}
	});
	
	// 창 닫기 클릭
	$("input[name=window_close]").click(function() {
		window.close();
	});
	
	
});