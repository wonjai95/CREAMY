/**
 * 
 */
$("document").ready(function(){
	// 급여 계약에서 선택시 직원 코드 및 급여 계약 코드 hidden에 설정
	$("tr[class^=contract]").click(function(){
		
		$("tr[class^=contract]").css("background", "");
		
		var conCode = $(this).find("input[name^=contract_code]").val();
		
		$("input[name=salary_contract_code]").val(conCode);
		$(this).css("background","#20c997");
	});
	
	// 급여 계약 목록에서 지급 버튼 클릭시
	$("#payment_btn").click(function(){
		
		var empCode = $("input[name=employee_code]").val();
		var conCode = $("input[name=salary_contract_code]").val();
		
		window.location = "employee_paymentAction?employee_code="+empCode+"&salary_contract_code="+conCode;
	});
	
	
	// 급여 계약 목록에서 삭제 버튼 클릭시
	$("#contractDel_btn").click(function(){
		
		var conCode = $("input[name=salary_contract_code]").val();
		
		window.location = "employee_contractDelete?salary_contract_code=" + conCode;
	});
});
