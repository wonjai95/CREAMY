<!-- 
이름 : 이시현
작성날짜 : 2021-09-16 ~ 2021-09-16 
회원으로부터 요청된 예약서비스를 받고 취합하여 관리하는 페이지
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title> 예약요청 </title>

<style type="text/css">
	a {
	text-decoration: none;
	color: black;
	font-size: bold;
	}

</style>

</head>
<body>
<!-- ------------------------------- 테이블표 시작 전 '예약요청' 설명란 시작 -->
<div class="panel-body">
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
	    <div class="col-lg-12">
	    <div class="ibox ">
	        <div class="ibox-title">
	            <h5>예약요청 목록을 보여줍니다. 예약코드를 선택해 관리해보세요.</h5>	            
	        </div>
<!-- ------------------------------- 테이블표 시작 전 '예약요청' 설명란 끝 -->

<!-- ------------------------------- 테이블표 시작 -->
		<form action="requestReservation" method="post">
           <sec:csrfInput/>
           <input type="hidden" id="user_id" name="user_id">
		<div class="ibox-content">
			<div class="table-responsive">
	        <table class="table table-striped table-bordered table-hover dataTables-example">
		        <thead>
		        <tr>
		            <th>예약코드</th>
		           	<th>상태</th>
		            <th>날짜</th>
		            <th>시간</th>
		            <th>담당자</th>
		            <th>회원아이디</th>
		               
		        </tr>
		        </thead>
		        <tbody>
 		        <tr class="gradeX">
		            <td>
			            <!-- 상세페이지 -->
						<a href="requestDetails">13579864${dto.res_code}코드</a>		            
		            </td>
		            <td>완료</td>
		            <td>2021년 8월 15일</td>
		            <td>13시</td>
		            <td class="center">47963번</td>
		            <td class="center">pilot1234</td>
		        </tr>
		        
		        <c:forEach var="dto" items="${dtos}">
						<tr class="gradeX">
							<td style="text-align:center">${dto.res_code}코드
							</td>
							
							<td style="text-align:center">${dto.res_state}상태</td>
							
							<td style="text-align:center">${dto.res_date}날짜</td>
							
							<td style="text-align:center">${dto.res_hour}시 시간</td>
							
							<td style="text-align:center">${dto.employee_code} 직원</td>
							
							<td style="text-align:center">${dto.user_id} 회원</td>
						</tr>
					</c:forEach>
		        
		           <!-- res_code  
    res_state     
    res_date      
    res_hour       
    employee_code  
    user_id   -->  
		        
		        <!-- 예약조회 목록이 있다면 -->
				<c:if test="${cnt > 0}">
					<%-- c:forEach var="작은 바구니 참조변수(임의로 지정하기)" items="${큰 바구니}" --%>
					<c:forEach var="dto" items="${dtos}">
						<tr class="gradeX">
							<td style="text-align:center">${dto.res_code}코드
							</td>
							
							<td style="text-align:center">${dto.res_state}상태</td>
							
							<td style="text-align:center">${dto.res_date}날짜</td>
							
							<td style="text-align:center">${dto.res_hour}시 시간</td>
							
							<td style="text-align:center">${dto.employee_code} 직원</td>
							
							<td style="text-align:center">${dto.user_id} 회원</td>
						</tr>
					</c:forEach>
				</c:if>
		        
		        
		        
		        
		        
		        
		        
		        
		        
		        
		        
		        
				<!-- 예약조회 목록이 있다면 -->
				<c:if test="${cnt > 0}">
					<%-- c:forEach var="작은 바구니 참조변수(임의로 지정하기)" items="${큰 바구니}" --%>
					<c:forEach var="dto" items="${dtos}">
						<tr class="gradeX">
							<td style="text-align:center">${dto.res_code}코드
							</td>
							
							<td style="text-align:center">${dto.res_state}상태</td>
							
							<td style="text-align:center">${dto.res_date}날짜</td>
							
							<td style="text-align:center">${dto.res_hour}시 시간</td>
							
							<td style="text-align:center">${dto.employee_code} 직원</td>
							
							<td style="text-align:center">${dto.user_id} 회원</td>
						</tr>
					</c:forEach>
				</c:if>
				
				<!-- 예약조회 목록이 없다면, -->
				<c:if test="${cnt == 0}">
					<tr>
						<td align="center">
							예약요청 목록이 없습니다.
						</td>			
					</tr>
				</c:if>
		        
		        </tbody>
		        <tfoot>
		        <tr>
		            <th>예약코드</th>
		           	<th>상태</th>
		            <th>날짜</th>
		            <th>시간</th>
		            <th>담당자</th>
		            <th>회원아이디</th>
		        </tr>
		        </tfoot>
	        </table>
			</div>
		</div>
		</form>
		
	    </div>
		</div>
	</div>
	</div>
</div>
<!-- ------------------------------- 테이블표 끝 -->



<!-- 페이지 컨트롤 -->
<table style="width:1000px; display:block; margin:0px 0px 0px 320px;">
	<tr>
		<th id="arrow" align="center" style="font-size:18px">
			<!-- 게시글이 있다면, -->
			<c:if test="${cnt > 0}">
				
				<!-- 처음[◀︎◀︎] / 이전 블록[◀︎] /  -->
				<c:if test="${startPage > pageBlock}">
					<a href="requestReservation"> [◀︎◀︎] </a>
					<a href="requestReservation?pageNum=${startPage - pageBlock} "> [◀︎] </a>
				</c:if>	
					
				<!-- 블록 내의 페이지 번호 -->
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<c:if test="${i == currentPage}">
						<span><b>[${i}]</b></span>
					</c:if>
					
					<c:if test="${i != currentPage}">
						<a href="requestReservation?pageNum=${i} ">[${i}]</a>
					</c:if>
				</c:forEach>
				
				<!-- 다음 블록[▶︎︎] / 마지막[▶︎▶︎︎] /  -->
				<c:if test="${pageCount > endPage}">
					<a href="requestReservation?pageNum=${startPage + pageBlock} "> [▶︎︎] </a>
					<a href="requestReservation?pageNum=${pageCount} "> [▶︎▶︎︎] </a>
				</c:if>
				
			</c:if>
		 </th>
	</tr>
</table> 



</body>

</html>