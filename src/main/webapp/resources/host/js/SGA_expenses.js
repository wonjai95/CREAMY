$("document").ready(function() {
	// 유형 클릭
	$("input[name^=slip_type]").click(function() {
		$("input[name^=slip_type]").css("background", "");
		$("input[name^=slip_type]").css("color", "");
		
		var slip_type = $(this).val();
		console.log(slip_type);
		$("#slip_type").val(slip_type);
		$(this).css("background", "#1ab394");
		$(this).css("color", "white");
	});
	
	$("#insertSGA").click(function() {
		
		if($("#slip_type").val() == "") {
			alert("유형을 선택하세요.");
			return false;
		}; 
		
		var slip_regDate = $("input[name=slip_regDate]").val();
		var slip_type = $("#slip_type").val();
		var slip_money = $("input[name=slip_money]").val();
		var slip_memo = $("textarea[name=slip_memo]").val();
		
		var header = $("meta[name='_csrf_header']").attr("content");
        var token = $("meta[name='_csrf']").attr("content");
        console.log("header : " + header);
        
         $.ajax({
	       	  url : "insertSlip",
	       	  type : "Post",
	       	  data : "slip_regDate=" + slip_regDate + "&slip_type=" + slip_type 
	       	  			+ "&slip_money=" + slip_money + "&slip_memo=" + slip_memo,
       	  	  async: false,	
  			  beforeSend : function(jqXHR, settings) {
	       		  console.log("beforesend 진행");
	                 jqXHR.setRequestHeader(header, token);
	       	  },
	       	  success : function(result) {
	       		  console.log("result : " + result);
	       		  if(result == "1") {
	       			  alert("판관비가 등록되었습니다.");
	       			  window.location.reload();
	       		  } else {
	       			alert("판관비 등록에 실패했습니다.");
	       		  }
	       		 
	       	  },
	       	  error : function(error) {
	       		console.log(error);  
	       	  }
         });
		
	});
	
});