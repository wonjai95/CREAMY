<!-- 
이름 : 이시현
작성날짜 : 2021-09-16 ~ 2021-09-16 
회원으로부터 요청된 예약서비스를 받고 취합하여 관리하는 페이지
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="../../setting.jsp" %> --%>
<%@ include file="/WEB-INF/views/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title> 예약요청 </title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
<div id="wrapper">

	<!-- frame  -->
	<jsp:include page="../Frame.jsp" />
	
<div id="page-wrapper" class="gray-bg">

	<!-- nav bar  -->
	<jsp:include page="../navbar.jsp" />

<!-- ------------------------------- 중분류 '예약요청' 상단 흰색 표기란 시작 -->
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-8">
        <h2>예약요청</h2>
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="home">Home</a>
            </li>
            <li class="breadcrumb-item">
                예약
            </li>
            <li class="breadcrumb-item active">
                <strong>예약요청</strong>
            </li>
        </ol>
    </div>
</div>
<!-- ------------------------------- 중분류 '예약요청' 상단 흰색 표기란 끝 -->

<!-- ------------------------------- 테이블표 시작 전 '예약요청' 설명란 시작 -->
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
	    <div class="col-lg-12">
	    <div class="ibox ">
	        <div class="ibox-title">
	            <h5>예약요청건에 대해 관리합니다.</h5>
	            
	            &nbsp;&nbsp;&nbsp;
	            <button type="button" class="btn btn-primary btn-lg"
	            		onclick="insertReservation"> 예약 등록
	            </button>
	            &nbsp;&nbsp;&nbsp;
	            <button type="button" class="btn btn-primary btn-lg"
	            		onclick="modifyReservation"> 예약 수정
	            </button>
	            &nbsp;&nbsp;&nbsp;
	            <button type="button" class="btn btn-primary btn-lg"
	            		onclick="deleteReservation"> 예약 삭제
	            </button>
	            
	            
	            <div class="ibox-tools">
	                <a class="collapse-link">
	                    <i class="fa fa-chevron-up"></i>
	                </a>
	                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	                    <i class="fa fa-wrench"></i>
	                </a>
	                <ul class="dropdown-menu dropdown-user">
	                    <li><a href="#" class="dropdown-item">Config option 1</a>
	                    </li>
	                    <li><a href="#" class="dropdown-item">Config option 2</a>
	                    </li>
	                </ul>
	                <a class="close-link">
	                    <i class="fa fa-times"></i>
	                </a>
	            </div>
	        </div>
<!-- ------------------------------- 테이블표 시작 전 '예약요청' 설명란 끝 -->

<!-- ------------------------------- 테이블표 시작 -->
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
		            <th>인원수</th>
		            <th>특별요청</th>
		            <th>서비스</th>
		            <th>내용</th>
		            <th>호실</th>
		           
		        </tr>
		        </thead>
		        <tbody>
		        <tr class="gradeX">
		            <td>13579864</td>
		            <td>완료</td>
		            <td>2021년 8월 15일</td>
		            <td>13시</td>
		            <td class="center">47963번</td>
		            <td class="center">pilot1234</td>
		            <td>3명</td>
		            <td>좋은 서비스 제공해주세요</td>
		            <td>헤어펌</td>
		            <td class="center">헤어펌과 두피케어</td>
		            <td class="center">R310호</td>
		        </tr>
		        
		        
		        <%-- 예약조회 목록이 있다면 
				<c:if test="${cnt > 0}">
					<!-- c:forEach var="작은 바구니 참조변수(임의로 지정하기)" items="${큰 바구니}" 
					<c:forEach var="dto" items="${dtos}">
						<tr>
							<td style="text-align:center">${number}
								<c:set var="number" value="${number - 1}" />
							</td>
							
							<td style="text-align:center">
								<!-- 상세페이지 
								<!-- <a href="menuDetail.bo_mn?num=${dto.m_number}&pageNum=${pageNum}&number=${number + 1}">${dto.m_name}</a> 
							${dto.res_state}
							</td>
							
							<td style="text-align:center">${dto.res_date}</td>
							
							<td style="text-align:center">${dto.res_hour}시</td>
							
							<td style="text-align:center">${dto.res_manager}</td>
							
							<td style="text-align:center">${dto.user_id}</td>
							
							<td style="text-align:center">${dto.res_cnt}</td>
							
							<td style="text-align:center">${dto.res_indiv_request}</td>
							
							<td style="text-align:center">${dto.res_service}</td>
							
							<td style="text-align:center">${dto.res_memo}</td>
							
							<td style="text-align:center">${dto.res_room}</td>
						</tr>
					</c:forEach>
				</c:if>
				
				<!-- 예약조회 목록이 없다면, 
				<c:if test="${cnt == 0}">
					<tr>
						<td colspan="11" align="center">
							예약 정보가 없습니다.
						</td>			
					</tr>
				</c:if>   --%>
		        
		        </tbody>
		        <tfoot>
		        <tr>
		            <th>예약코드</th>
		           	<th>상태</th>
		            <th>날짜</th>
		            <th>시간</th>
		            <th>담당자</th>
		            <th>회원아이디</th>
		            <th>인원수</th>
		            <th>특별요청</th>
		            <th>서비스</th>
		            <th>내용</th>
		            <th>호실</th>
		        </tr>
		        </tfoot>
	        </table>
			</div>
		</div>
	    </div>
		</div>
	</div>
</div>
<!-- ------------------------------- 테이블표 끝 -->



<!-- 페이지 컨트롤 
<table style="width:1000px; display:block; margin:0px 0px 0px 320px;">
	<tr>
		<th id="arrow" align="center" style="font-size:18px">
			<!-- 게시글이 있다면, 
			<c:if test="${cnt > 0}">
				
				<!-- 처음[◀︎◀︎] / 이전 블록[◀︎] /  
				<c:if test="${startPage > pageBlock}">
					<a href="menuList.lt_mng"> [◀︎◀︎] </a>
					<a href="menuList.lt_mng?pageNum=${startPage - pageBlock} "> [◀︎] </a>
				</c:if>	
					
				<!-- 블록 내의 페이지 번호 
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<c:if test="${i == currentPage}">
						<span><b>[${i}]</b></span>
					</c:if>
					
					<c:if test="${i != currentPage}">
						<a href="menuList.lt_mng?pageNum=${i} ">[${i}]</a>
					</c:if>
				</c:forEach>
				
				<!-- 다음 블록[▶︎︎] / 마지막[▶︎▶︎︎] /  
				<c:if test="${pageCount > endPage}">
					<a href="menuList.lt_mng?pageNum=${startPage + pageBlock} "> [▶︎︎] </a>
					<a href="menuList.lt_mng?pageNum=${pageCount} "> [▶︎▶︎︎] </a>
				</c:if>
				
			</c:if>
		 </th>
	</tr>
</table> -->



	<!-- footer  -->
	<jsp:include page="../footer.jsp" />

</div>
</div>

</body>

</html>