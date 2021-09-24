<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		$("input[type=checkbox]").click(function(){
			var chk = $(this).is(":checked");
			if(chk == true){
				$(this).nextAll().removeAttr("disabled");
			}else{
				$(this).nextAll().attr("disabled", "disabled");
			}
		});
	});
	
	function chkTime(){
		
		$("")
		
		return false;
	}

</script>
</head>
<body>

	<div class="ibox-content">
	    <h2>
	    	근무시간 설정
	    </h2>
	    <p class="font-bold">근무시간 설정</p>
	    
	    <form action="setWorkTime" method="post" >
	    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		        <c:forEach var="day" items="${dayList}" >
					<div class="form-group" style="font-size: 20px;">
						 <input type="checkbox" name="day" value="${day}">
						 <label>${day}</label>
						 <input type="time" name="open" disabled="disabled">
						  ~ 
						 <input type="time" name="close" disabled="disabled">
					</div>
					<br/>
				</c:forEach>
	        <div>
	            <button class="btn btn-sm btn-primary m-t-n-xs" type="submit"><strong>시간 설정</strong></button>
	        </div>
	    </form>
	</div>


</body>
</html>