$("document").ready(function() {
	
	// 테이블에서 상품 선택시 상품 정보 hidden에 설정
   $("tr[class^=product]").click(function() {
      $("tr[class^=product]").css("background", "");
      
      var thisTr = $(this);
      var thisTd = $(this).children();
      var product_typeOfSales = thisTd.eq(0).find("input[name^=product]").val();
      var product_name = thisTd.eq(1).find("input[name^=product]").val();
      var product_price = thisTd.eq(2).find("input[name^=product]").val();
      var product_rentalPeriod = thisTd.eq(3).find("input[name^=product]").val();
      console.log("jquery product_name : " + product_name);
      
      $("input[name=product_typeOfSales_hidden]").val(product_typeOfSales);
      $("input[name=product_name_hidden]").val(product_name);
      $("input[name=product_price_hidden]").val(product_price);
      $("input[name=product_rentalPeriod_hidden]").val(product_rentalPeriod);
      $(this).css("background", "#20c997");
   });
   
   
   // 선택한 상품 정보 장바구니에 담기 + 결제금액 출력
   $("#add_btn").click(function() {
	   
	   if($("input[name=product_name_hidden]").val() == 0) {
         alert("구매할 상품을 선택해주세요!");
         return false;
         
      } else {
    	  var cart_product_typeOfSales = $("input[name=product_typeOfSales_hidden]").val();
          var cart_product_name = $("input[name=product_name_hidden]").val();
          var cart_product_price = $("input[name=product_price_hidden]").val();
    	  
	      console.log("product_name : " + cart_product_name);
	      
	      // 값 뿌리기
	      document.getElementById("cart_product_typeOfSales").innerHTML = cart_product_typeOfSales;
	      document.getElementById("cart_product_name").innerHTML = cart_product_name;
	      document.getElementById("cart_product_price").innerHTML = cart_product_price;
	      document.getElementById("total_payment").innerHTML = cart_product_price;
      }
   });
   
   
   
   
   
	// 현금 버튼 클릭
	$("#cash_btn").click(function() {
		alert("탄다");
		// 클릭시 버튼 색깔 지정
		/*
		$("#employee_out").css("background", "");
		$("#employee_in").css("background", "#20c997");
		$("#employee_in").css("color", "#212529");
		
		// 클릭시 지각 체크박스 보여줌
		$(".form-check-input").show();
		$(".form-check-label").html("지각");
		$("input[name=late_early]").val("지각");
		*/
		
		// 클릭시 현금 칸 출력
		$("#cash").show();
		
		// 클릭시 카드사, 할부 숨기기
		$("#banking_credit").css('display', 'block');
		$("#banking_installment").css('display', 'block');
		
		
		// 출퇴근 값을 hidden에 담아서 service로 넘김
		/*
		$("input[name=employee_in]").val("출근");
		$("input[name=employee_out]").val("0");
		*/
	});
   
   
   
   
	// 결제 방법 - 현금 버튼 클릭시
   $("#cash_btn").click(function() {
		
	   if($("input[name=total_payment]").val() == 0) {
         alert("결제할 상품을 장바구니에 담아주세요!");
         return false; }
       else {
    	  // 금융기관을 클릭할 수 없게 하기
    	   
    	   
    	   
    	   
    	   
       }
   });
	
});