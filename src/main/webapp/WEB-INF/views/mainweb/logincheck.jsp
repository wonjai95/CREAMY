<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${authority eq '[ROLE_USER]'}">
		<script type="text/javascript">
			window.location="home";
		</script>
	</c:if>
	
	<c:if test="${authority eq '[ROLE_HOST]'}">
		<script type="text/javascript">
			window.location="${path}/host/home";
		</script>
	</c:if>


</body>
</html>