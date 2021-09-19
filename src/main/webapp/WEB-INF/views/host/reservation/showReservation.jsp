<!-- 
이름 : 이시현
작성날짜 : 2021-09-16 ~ 2021-09-16 
완료된 예약서비스에 따른 회원목록 조회
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

    <title> 예약조회 </title>

    <link href="${path}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/resources/bootstrap/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${path}/resources/bootstrap/css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    <link href="${path}/resources/bootstrap/css/animate.css" rel="stylesheet">
    <link href="${path}/resources/bootstrap/css/style.css" rel="stylesheet">

</head>

<body><div id="wrapper">

	<!-- frame  -->
	<jsp:include page="../Frame.jsp" />
	
<div id="page-wrapper" class="gray-bg">

	<!-- nav bar  -->
	<jsp:include page="../navbar.jsp" />

<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-8">
        <h2>예약조회</h2>
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="home">Home</a>
            </li>
            <li class="breadcrumb-item">
                예약
            </li>
            <li class="breadcrumb-item active">
                <strong>예약조회</strong>
            </li>
        </ol>
    </div>
</div>


<div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h5>예약 상태가 완료된 회원의 목록을 보여줍니다.</h5>
                    </div>
                    
          
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
					</c:if>
                    --%>
                    
                    
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



    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <script src="js/plugins/dataTables/datatables.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>

        // Upgrade button class name
        $.fn.dataTable.Buttons.defaults.dom.button.className = 'btn btn-white btn-sm';

        $(document).ready(function(){
            $('.dataTables-example').DataTable({
                pageLength: 25,
                responsive: true,
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [
                    { extend: 'copy'},
                    {extend: 'csv'},
                    {extend: 'excel', title: 'ExampleFile'},
                    {extend: 'pdf', title: 'ExampleFile'},

                    {extend: 'print',
                     customize: function (win){
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');

                            $(win.document.body).find('table')
                                    .addClass('compact')
                                    .css('font-size', 'inherit');
                    }
                    }
                ]

            });

        });

    </script>









</body>

</html>
