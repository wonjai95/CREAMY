<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: white;
}
</style>
</head>
<body>
	<div class="ibox-content">
		<form method="get">
			<div class="form-group  row">
				<label class="col-sm-2 col-form-label">그룹 등록</label>
			</div>

			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">그룹명</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="">
				</div>
			</div>


			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<div class="col-sm-7 col-sm-offset-2" align="right">
					<input type="submit" class="btn btn-primary btn-sm" value="확인">
					<input type="button" class="btn btn-primary btn-sm" value="창 닫기"
						onclick="self.close();">
				</div>
			</div>
		</form>
	</div>

</body>
</html>