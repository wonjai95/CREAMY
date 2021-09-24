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
	        
	        <div class="form-group"><label>Email</label> <input type="email" placeholder="Enter email" class="form-control" required="" aria-required="true"></div>
	        <div class="form-group"><label>Password</label> <input type="password" placeholder="Password" class="form-control" name="password"></div>
	        <div class="form-group"><label>Url</label> <input type="text" placeholder="Enter email" class="form-control" name="url"></div>
	        <div class="form-group"><label>Number</label> <input type="text" placeholder="Enter email" class="form-control" name="number"></div>
	        <div class="form-group"><label>MinLength</label> <input type="text" placeholder="Enter email" class="form-control" name="min"></div>
	        <div class="form-group"><label>MaxLength</label> <input type="text" placeholder="Enter email" class="form-control" name="max"></div>
	       
	        <div>
	            <button class="btn btn-sm btn-primary m-t-n-xs" type="submit"><strong>Submit</strong></button>
	        </div>
	    </form>
	</div>
		

</body>
</html>