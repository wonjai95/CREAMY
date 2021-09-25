<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="_csrf" content="${_csrf.token}"/>
	<meta name="_csrf_header" content="${_csrf.headerName}"/>
    <title>roomDetail.jsp</title>

<style>
	.home_div {
	    border-radius: 10px;
	    margin-bottom: 5px;
	    padding: 5px;
	}
</style>

<script type="text/javascript" src="${path}/resources/host/js/bookingRoomTable.js"></script>
</head>
<sec:csrfInput/>
<input type="hidden" name="selectDate" value="${selectDate}">
<body class="top-navigation">
<div class="col-lg-12" id="roomDetail">
<div class="ibox ">
    <div class="ibox-title">
        <h5>호실 상세 정보  - 영업시간 : ${open_sche} ~ ${close_sche}</h5>
    </div>
    <div class="ibox-content">
        <div id='external-events'>
            <p style="font-size: 14px;">${selectDate} 현황</p>
            <c:forEach var="dto" items="${dtos}">
            	<div class='home_div navy-bg'>예약 완료 : ${dto.res_start} - ${dto.res_end}</div>
            </c:forEach>
            <br>
				<p class="m-t" style="border-top: 1px solid gray; padding-top: 5px; display: flex;">
					<span class="timeTxt" style="font-size: 16px; place-self: center;">시간 입력 : &nbsp;</span> 
					<input type="number" class="form-control" placeholder="시작 NN" name="res_start" min="0" max="24"
						 style="width: 25%" required>
						 <span class="timeTxt" style="font-size: 16px; place-self: center;">&nbsp;시&nbsp; ~ &nbsp;&nbsp;</span>
					<input type="number" class="form-control" placeholder="종료 NN" name="res_end" min="0" max="24"
						 style="width: 25%" required>
						 <span class="timeTxt" style="font-size: 16px; place-self: center;">&nbsp;시 </span>            
				</p>
        </div>
    </div>
</div>
</div>              
</body>

</html>