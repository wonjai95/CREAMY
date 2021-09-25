$("document").ready(function(){
	
	// 수정 버튼 클릭시 확인
	$("#modify").submit(function(){
		var result = confirm("수정하시겠습니까?");
		
		if(result){
			return true;
		} else {
			return false;
		}
	});
	
	// 근태 월달력의 default value 지정하기
	var currentMonth = new Date().toISOString().slice(0, 7);
	console.log("currentMonth : " + currentMonth);
	
	$("input[id=currentMonth]").val(currentMonth);
	
	// 1번 탭을  Ajax 발동
	// var header = 'X-CSRF-TOKEN' 아래 방식이 안 될 경우 이거 사용
	var header = $("meta[name='_csrf_header']").attr("content");
    var token = $("meta[name='_csrf']").attr("content");
    var empCode = $("input[name=employee_code]").val();
    
    console.log("header : " + header);
    console.log("token : " + token);
    console.log("empCode : " + empCode);
    
    $.ajax({
       url : "employee_attendanceList",
       type : "Post",
       data : "employee_code=" + empCode,
       beforeSend : function(jqXHR, settings) {
          console.log("beforesend 진행");
          jqXHR.setRequestHeader(header, token);
       },
       success : function(result) {
          $(".tab-content").html(result);
       },
       error : function(error) {
      	alert("다시 시도해주세요.");
      	console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
       
    });
    
	// 1번 탭을 클릭시 Ajax 발동
	$("a[href='#tab-1']").click(function() {
		  console.log("탭1 클릭");
		  
		  // var header = 'X-CSRF-TOKEN' 아래 방식이 안 될 경우 이거 사용
		  var header = $("meta[name='_csrf_header']").attr("content");
	      var token = $("meta[name='_csrf']").attr("content");
	      var empCode = $("input[name=employee_code]").val();
	      
	      console.log("header : " + header);
	      console.log("token : " + token);
	      console.log("empCode : " + empCode);
	      
	      $.ajax({
	         url : "employee_attendanceList",
	         type : "Post",
	         data : "employee_code=" + empCode,
	         beforeSend : function(jqXHR, settings) {
	            console.log("beforesend 진행");
	            jqXHR.setRequestHeader(header, token);
	         },
	         success : function(result) {
	            $(".tab-content").html(result);
	         },
	         error : function(error) {
	        	alert("다시 시도해주세요.");
	        	console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	         }
	         
	      });
	   });
	   
    // 2번 탭을 클릭시 Ajax 발동
    $("a[href='#tab-2']").click(function() {
		  console.log("탭1 클릭");
		  
		  // var header = 'X-CSRF-TOKEN' 아래 방식이 안 될 경우 이거 사용
		  var header = $("meta[name='_csrf_header']").attr("content");
	      var token = $("meta[name='_csrf']").attr("content");
	      var empCode = $("input[name=employee_code]").val();
	      
	      console.log("header : " + header);
	      console.log("token : " + token);
	      console.log("empCode : " + empCode);
	      
	      $.ajax({
	         url : "employee_leaveList",
	         type : "Post",
	         data : "employee_code=" + empCode,
	         beforeSend : function(jqXHR, settings) {
	            console.log("beforesend 진행");
	            jqXHR.setRequestHeader(header, token);
	         },
	         success : function(result) {
	            $(".tab-content").html(result);
	         },
	         error : function(error) {
	        	alert("다시 시도해주세요.");
	        	console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	         }
	         
	      });
	   });
    
    // 2번 탭을 클릭시 Ajax 발동
    $("a[href='#tab-3']").click(function() {
		  console.log("탭1 클릭");
		  
		  // var header = 'X-CSRF-TOKEN' 아래 방식이 안 될 경우 이거 사용
		  var header = $("meta[name='_csrf_header']").attr("content");
	      var token = $("meta[name='_csrf']").attr("content");
	      var empCode = $("input[name=employee_code]").val();
	      
	      console.log("header : " + header);
	      console.log("token : " + token);
	      console.log("empCode : " + empCode);
	      
	      $.ajax({
	         url : "employee_contractList",
	         type : "Post",
	         data : "employee_code=" + empCode,
	         beforeSend : function(jqXHR, settings) {
	            console.log("beforesend 진행");
	            jqXHR.setRequestHeader(header, token);
	         },
	         success : function(result) {
	            $(".tab-content").html(result);
	         },
	         error : function(error) {
	        	alert("다시 시도해주세요.");
	        	console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	         }
	         
	      });
	   });
	
	
	// 급여 계약에서 지급 버튼 클릭시 급여 지급 등록
	$("#insertpayment_btn").click(function(){
		var empCode = $("input[name=employee_code]").val();
		console.log(empCode);
		
		window.location = "employee_paymentAction?employee_code=" + empCode; 
	});
	
	
});