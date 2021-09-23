<!-- 
이름 : 장현정
작성날짜 : 2021-09-16 ~ 2021-09-16 
회원에게 상품 판매 처리
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title> 상품 판매 </title>
<script>     

$("document").ready(function() {
	
	// 결제 방법 - 현금 버튼 클릭시
   $("#cash_btn").click(function() {
		window.alert("탄다~~");
		
	   if($("input[name=total_payment]").val() == 0) {
         alert("결제할 상품을 장바구니에 담아주세요!");
         return false;
      } else {
    	  
    	  // 금융기관을 클릭할 수 없게 하기
    	  $("#banking").on("click"){
    		  return false;
    	  }
      }
   });
	
	
	
}


</script>
</head>
<body>
<div id="wrapper">

<!-- ------------------------------- 결제 시작 시작 -->
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
	    <div class="col-lg-12">
	    <div class="ibox ">
	        <div class="ibox-title">
	            <h5>상품판매를 진행합니다.</h5>
	            
	            &nbsp;&nbsp;&nbsp;
	            <button type="button" class="btn btn-primary btn-lg"
	            		onclick="insertReservation"> 상품 판매
	            </button>
	            
	        </div>
<!-- ------------------------------- 결제 시작 끝 -->

<!-- ------------------------------- 회원정보 시작 -->
<div class="row">
<div class="col-sm-4">
<div class="ibox selected">
	<div class="ibox-content">
	    <div class="tab-content">
	        <div id="contact-1" class="tab-pane active">
	            
	            <div class="row m-b-lg">
	                <div class="col-lg-4 text-center">     
	                    <h2><input type="hidden" name="user_name" value="${dto.user_name}">${dto.user_name}</h2>    
	
	                    <div class="m-b-sm">
	                        <img alt="image" class="rounded-circle" src="img/a2.jpg" style="width: 62px">
	                    </div>
	                </div>              
	                <div class="col-lg-8">
	                    <strong>
	                        자기소개
	                    </strong>
	
	                    <p>
	                        안녕하세요. 서울 신림동에 사는 강수현입니다. 사장님이 헤어 펌 잘하신다고 여기저기 소문이 많이 나서 가입합니다.
	                        잘 부탁드려요~!
	                    </p>
	                    <button type="button" class="btn btn-primary btn-sm btn-block"><i class="fa fa-envelope"></i> Send Message
	                    </button>
	                </div>
	            </div>
	            <div class="client-detail">
	            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div class="full-height-scroll" style="overflow: hidden; width: auto; height: 100%;">
	
	                <strong>기본정보</strong>
	
	                <ul class="list-group clear-list">
	                    <li class="list-group-item fist-item">
	                        <span class="float-right"> 회원번호 : </span>
	                        <input type="hidden" name="user_code" value="${dto.user_code}">${dto.user_code}
	                    </li>
	                    <li class="list-group-item">
	                        <span class="float-right"> 이름 : </span>
	                        <input type="hidden" name="user_name" value="${dto.user_name}">${dto.user_name}
	                    </li>
	                    <li class="list-group-item">
	                        <span class="float-right"> 담당자 : </span>
	                      	<input type="hidden" name="employ_name" value="employ_name조인해야함">employ_name조인해야함
	                      	
	                    </li>
	                    <li class="list-group-item">
	                        <span class="float-right"> 휴대폰 : </span>
	                        <input type="hidden" name="user_ph" value="${dto.user_ph}">${dto.user_ph}
	                    </li>
	                    <hr>
	                    <li class="list-group-item">
	                        <span class="float-right"> 총 구매 : </span>
	                        <input type="hidden" name="" value="">
	                    </li>
	                    <li class="list-group-item">
	                        <span class="float-right"> 총 금액 : </span>
	                        <input type="hidden" name="" value="">
	                    </li>
	                </ul>
	                <strong>Notes</strong>
	                <p>
	                    만성 두피건조증이 있습니다. 무쪼록 잘 부탁드려요.
	                </p>
	                <hr>
	                
	                <div class="slimScrollBar" style="background-color: rgb(0, 0, 0); width: 7px; position: absolute; top: 42px; opacity: 0.4; display: none; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; z-index: 99; right: 1px; height: 412.88936627282493px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; background-color: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
	            </div>
	            </div>
	        </div>
	      </div>  
	    </div>    
	  </div>      
	</div>
<!-- ------------------------------- 회원정보 끝 -->
	
<!-- ------------------------------- 상품 판매 시작 -->
	<div class="col-sm-4">
	    <div class="ibox ">
	        <div class="ibox-title">
	            <h5>상품 판매</h5>
	        </div>
	        
	        <div class="ibox-content m-b-sm border-bottom">  
	            <form method="get">
	            <div class="col-sm-5" style="display: flex">
					<div class="form-group">    
						<select name="" id="" class="form-control">
							<option value="판매형태" selected="">판매형태</option>
							<option value="서비스">서비스</option>
							<option value="기간">기간</option>
						</select>
					</div>
					
					<div class="form-group">
					
						<select name="" id="" class="form-control">
							<option value="1" selected="">상품 그룹</option>
							<option value="2">회원권</option>
							<option value="3">정액제</option>
							<option value="4">염색</option>
							<option value="4">펌</option>
						</select>
					</div>
				</div>
	            <table class="footable table table-stripped toggle-arrow-tiny footable-loaded tablet breakpoint" data-page-size="15">
					<thead>
		            <tr>
		                <th>판매유형</th>
		                <th>상품명</th>
		                <th>가격</th>
		                <th>이용기간</th>
		            </tr>
		            </thead>
		            <c:forEach var="dto2" items="${dto2}">
		            <tbody>
			            <tr class="gradeX">
			                <td class="center">${dto2.product_typeOfSales}<input type="hidden" value="${dto2.product_typeOfSales}"></td>
			                <td class="center">${dto2.product_name}<input type="hidden" value="${dto2.product_name}"></td>
			                <td class="center">${dto2.product_price}<input type="hidden" value="${dto2.product_price}"></td>
			                <td class="center">${dto2.product_rentalPeriod}<input type="hidden" value="${dto2.product_rentalPeriod}"></td>
			            </tr>
		            </tbody>
		            </c:forEach>
		           
				</table>
	                
	                <div class="hr-line-dashed"></div>
	            </form>
	        </div>
	        
	    </div>
	   <!-- ------------------------------- 장바구니 시작 -------------------------------------------------->
	    <div class="ibox ">
	        <div class="ibox-title">
	            <h5>장바구니</h5>
	        </div>
	        <div class="ibox-content m-b-sm border-bottom">  
	        
	            <form method="get">
	                <div class="col-sm-10">
	                    <button type="button" class="btn btn-outline btn-primary">추가</button>
	                    <button type="button" class="btn btn-outline btn-primary">삭제</button>
	                    <button type="button" class="btn btn-outline btn-primary">수량 및 옵션 변경</button>
	                    <button type="button" class="btn btn-outline btn-primary">+</button>
	                    <button type="button" class="btn btn-outline btn-primary">-</button>
	                 </div>
                
	            <table class="footable table table-stripped toggle-arrow-tiny footable-loaded tablet breakpoint" data-page-size="15">
					<thead>
		            <tr>
		                <th>장바구니 상품</th>
		                <th>옵션</th>
		                <th>가격</th>
		            </tr>
		            </thead>
		            <c:forEach var="dto2" items="${dto2}">
		            <tbody>
			            <tr class="gradeX">
			                <td class="center">${dto2.product_name}<input type="hidden" value="${dto2.product_name}"></td>
			                <td class="center">${dto2.product_price}<input type="hidden" value="${dto2.product_price}"></td>
			                <td class="center">${dto2.product_rentalPeriod}<input type="hidden" value="${dto2.product_rentalPeriod}"></td>
			            </tr>
			            
		            </tbody>
		            </c:forEach>
				</table>
	                
	                <div class="hr-line-dashed"></div>
	            </form>
	        </div>
	    </div> 
	</div>
	 
<!-- -------------------------------상품 판매 끝 -->

<!-- ------------------------------- 결제정보 시작 -->
	<div class="col-sm-4">
	    <div class="ibox ">
	        <div class="ibox-title">
	            <h5>결제 정보</h5>
	        </div>
	        <div class="ibox-content">
	            <form method="get">
	                <div class="form-group row">
	                <label class="col-sm-3 col-form-label">결제 금액</label>
	                    <div class="col-lg-8"><input type="text" name="total_payment" value="10" class="form-control"></div>
	                </div>
	                <hr>
	                <div class="hr-line-dashed"></div>
	                
	                <div class="form-group  row">
	                <label class="col-sm-3 col-form-label">납부 방법</label>
		                <div class="col-sm-8">
		                	<table>
		                	<tr><td>
			                    <button type="button" id="cash_btn" class="btn btn-outline btn-primary">현금</button>
			                    <button type="button" id="credit_btn" class="btn btn-outline btn-primary">카드</button>
			                    <button type="button" id="bank_btn" class="btn btn-outline btn-primary">무통장</button>
			                    <button type="button" id="kakao_btn" class="btn btn-outline btn-primary">카카오페이</button>
		                    </td></tr>
		                    </table>
		                 </div>
		            </div>
		           
	                <div class="hr-line-dashed"></div> 
	                
	                <div class="form-group row">
	                <label class="col-sm-3 col-form-label">금융 기관</label>
		                <div id="banking" class="col-sm-8" style="display:flex;">
		                     <div class="col-sm-6"> 
		                     <select name="" id="banking" class="form-control">
								<option value="1" selected="">카드 선택</option>
	                             <option>삼성카드</option> 
	                             <option>우리카드</option>
	                             <option>BC카드</option>
	                             <option>국민카드</option>
                        	 </select>
                        	 </div> 
                        	 <div class="col-sm-6">
		                     <select name="" id="banking" class="form-control">
								<option value="1" selected="">일시불</option>
	                             <option>1개월</option> 
	                             <option>2개월</option>
	                             <option>3개월</option>
	                             <option>4개월</option>
                        	 </select>
                        	 </div> 
		                </div> 
		            </div> 
	                <div class="hr-line-dashed"></div> 
	                
	                <div class="form-group  row">
	                <label class="col-sm-3 col-form-label">판매 일자</label>
		                <div class="col-sm-8">
							<input type="date" class="form-control">
		                </div>
		            </div> 
		            <div class="hr-line-dashed"></div> 
		            <div class="form-group  row">
	                <label class="col-sm-3 col-form-label">납부 일자</label>
		                <div class="col-sm-8">
						    <input type="date" class="form-control"> 
		                	<input type="radio" value="" onclick="">판매 일자와 같음
		                	<!-- ??????????????나중에 하자 현정아..체크박스.. -->
		                	<div class="icheckbox_square-green" style="position: relative;">             
		                	<input type="checkbox" class="i-checks" style="position: absolute; opacity: 0;">dd
		                	<ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
		                	
		                </div>
		            </div> 
	                <div class="hr-line-dashed"></div>
	                <div class="form-group  row">
	                <label class="col-sm-3 col-form-label">수납자</label>
		                <div class="col-sm-8">
		                     <select name="" id="" class="form-control">
								<option value="1" selected="">미지정</option>
	                             <option>정지은</option> 
	                             <option>한진원</option>
	                             <option>주수림</option>
	                             <option>한진원</option>
	                             <option>이시현</option>
	                             <option>정원제</option>
	                             <option>장현정</option>
                        	 </select>
                        </div>
		            </div>
		            <div class="hr-line-dashed"></div> 
	                <div class="form-group  row">
	                <label class="col-sm-3 col-form-label">납부 메모</label>
		                <div class="col-sm-8">
		                	<input type="text" value="">
                        </div> 
		            </div>
	                <div class="hr-line-dashed"></div> 
	            </form>
	        </div>
	    </div>
	</div>
<!-- ------------------------------- 결제정보 끝 -->

			</div>  
			</div>    
		</div>
	</div>    
</div>
</div>
</div>
</body>
</html>