<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	    <p class="font-bold">사업자 정보</p>
	    
	    <form role="form" id="form" novalidate="novalidate">
	        
	        <div class="form-group"><label>사업자 번호</label> <input type="text" placeholder="Enter email" class="form-control" value="${hostVo.comp_no}"></div>
	        <div class="form-group"><label>주소</label> <input type="text" placeholder="Password" class="form-control" name="" value="${hostVo.comp_address}"></div>
	        <div class="form-group"><label>업태</label> <input type="text" placeholder="Enter email" class="form-control" name="" value="${hostVo.comp_condition}"></div>
	        <div class="form-group"><label>업종</label> <input type="text" placeholder="Enter email" class="form-control" name="" value="${hostVo.comp_type}"></div>
	        <div class="form-group"><label>우편번호</label> <input type="text" placeholder="Enter email" class="form-control" name="" value="${hostVo.zipcode}"></div>
	        <div class="form-group"><label>예약 종류</label> <input type="text" placeholder="Enter email" class="form-control" name="" value="${hostVo.com_res}"></div>

	        <div>
	            <button class="btn btn-sm btn-primary m-t-n-xs" type="submit"><strong>Submit</strong></button>
	        </div>
	    </form>
	</div>
		

</body>
</html>