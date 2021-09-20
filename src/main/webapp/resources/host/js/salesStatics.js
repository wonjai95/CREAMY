$("document").ready(function() {
	// 2번 탭 클릭시 ajax 발동
	$("a[href='#tab-2']").click(function() {
		alert("tab-2 click");
		
		var header = $("meta[name='_csrf_header]").attr("content");
		var token = $("meta[name='_csrf']").attr("content");
		
		$.ajax({
			url : "salesTypeStatics",
			type : "Get",
			beforesend : function(jqXHR, settings) {
				console.log("beforesend 진행");
				jqXHR.setRequestHeader(header, token);
			},
			success : function(result) {
				$(".tab-content").html(result);
			},
			error : function(error) {
				alert("다시 시도해주세요.");
				window.history.back();
			}
			
		});
		
		
	});
	
	
	
	
});