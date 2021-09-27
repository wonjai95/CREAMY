<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="ibox-content">
	    <h2>
	    	사업자 정보
	    </h2>
	    <br>
		<c:if test="${hostVo.comp_no != null}">
		    <p class="font-bold">사업자 정보</p>
		    <form action="" method="post">
		        <div class="form-group"><label>호실 이름</label> <input type="text" class="form-control" name="room_name" required></div>
		        
		        <div class="form-group"><label>예약 종류</label> 
					<select name=room_stat id="room_stat" class="form-control">
						<option value="0" selected>호실 상태</option>
						<option value="사용가능">사용가능</option>
						<option value="사용불가능">사용불가능</option>
					</select>
		        </div>
		        
		        <div class="form-group"><label>1인당 가격</label> <input type="text" class="form-control" name="per_price"></div>
		        <div class="form-group"><label>최소 인원수</label> <input type="number" class="form-control" value="1" readonly name="min_cnt"></div>
		        <div class="form-group"><label>최대 인원수</label> <input type="number" class="form-control" max="5" name="max_cnt"></div>
		        <div>
		            <button class="btn btn-sm btn-primary m-t-n-xs" type="submit"><strong>Submit</strong></button>
		        </div>
		    </form>
		    </c:if>
	    </div>

</body>
</html>