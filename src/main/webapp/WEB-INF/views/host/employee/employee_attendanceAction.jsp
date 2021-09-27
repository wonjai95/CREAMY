<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>employee_attendanceAction.jsp</title>
<link href="${path}/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${path}/resources/bootstrap/css/font-awesome.css"
	rel="stylesheet">
<link href="${path}/resources/bootstrap/css/summernote-bs4.css"
	rel="stylesheet">
<link href="${path}/resources/bootstrap/css/datepicker3.css"
	rel="stylesheet">
<link href="${path}/resources/bootstrap/css/animate.css"
	rel="stylesheet">
<link href="${path}/resources/bootstrap/css/style.css" rel="stylesheet">
<style type="text/css">
body {
	background-color: white;
}

#g_product {
	text-shadow: aqua;
}
</style>
</head>
<body>
<c:if test="${inChk == 2}">
	<script type="text/javascript">
		alert("출근 등록을 먼저 진행하세요!");
		history.back();
	</script>
</c:if>

<c:if test="${inChk == 3}">
	<script type="text/javascript">
		alert("이미 출근 등록을 완료했습니다!");
		history.back();
	</script>
</c:if>

<c:if test="${inChk != 2 && inChk != 3}">
	<c:if test="${insertCnt == 1}">
		<script type="text/javascript">
			alert("출근 등록이 완료되었습니다.");
			window.self.close();
		</script>
	</c:if>
	<c:if test="${insertCnt == 0}">
		<script type="text/javascript">
			alert("출근 등록에 실패했습니다.");
			history.back();
		</script>
	</c:if>
	
	<c:if test="${insertCnt != 0 && insertCnt != 1}">
		<c:if test="${updateCnt == 1}">
			<script type="text/javascript">
				alert("퇴근 등록에 성공했습니다.");
				window.self.close();
			</script>
		</c:if>
		<c:if test="${updateCnt == 0}">
			<script type="text/javascript">
				alert("퇴근 등록에 실패했습니다.");
				history.back();
			</script>
		</c:if>
	</c:if>
	
</c:if>

<c:if test="${deleteCnt == 1}">
	<script type="text/javascript">
		alert("삭제에 성공했습니다!");
		history.back();
	</script>
</c:if>

<c:if test="${deleteCnt == 0}">
	<script type="text/javascript">
		alert("삭제에 실패했습니다.");
		history.back();
	</script>
</c:if>

</body>
</html>