<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>employee_leave</title>
<style type="text/css">
body {
	background-color: white;
}

#g_product {
	text-shadow: aqua;
}
</style>
<script type="text/javascript" src="${path}/resources/host/js/employee_leave_contract.js"></script>
</head>
<body>
	<div class="ibox-content">
		<form method="get">
			<div class="form-group  row">
				<label class="col-sm-2 col-form-label">직원코드</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="employee_code" 
						value="${employee_code}" placeholder="직원코드" required>
				</div>
			</div>
			
			<div class="hr-line-dashed"></div>
			<div class="form-group  row">
				<label class="col-sm-2 col-form-label">직원 이름</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="employee_name" 
						value="${employee_name}" placeholder="직원 이름" required>
				</div>
			</div>
			
			<div class="hr-line-dashed"></div>
			<div class="form-group  row">
				<label class="col-sm-2 col-form-label">사용 연차</label>
				<div class="col-sm-3" style="align-self: center;">
					0 / 0 일
				</div>
			</div>
			
			<div class="hr-line-dashed"></div>
			<div class="form-group  row">
				<label class="col-sm-2 col-form-label">입사 일자</label>
				<div class="col-sm-3" style="align-self: center;">
					2019-09-20
				</div>
			</div>
			
			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label" style="margin-right: 12px;">구분</label>
				<div class="col-sm-3" style="display: contents;">
					<input type='date' value="0" name="leave_start" style="border: 1px solid #e5e6e7"/>&nbsp;&nbsp; ~ &nbsp;&nbsp;
					<input type='date' value="0" name="leave_end" style="border: 1px solid #e5e6e7"/>&nbsp;&nbsp; 
				</div>
			</div>	
			
			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label" style="margin-right: 12px;">사용</label>
				<div class="col-sm-3" style="display: contents;">
					<input type="number" name="leave_total_days" value="0" id="leave_total_days" 
						readonly style="border: 1px solid #e5e6e7">
						&nbsp;&nbsp; <span style="align-self: center">일간 사용</span>
				</div>
			</div>
			
			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">사유</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="leave_memo" placeholder="사유">
				</div>
			</div>
			
			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">기타 메모</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="etc_memo" placeholder="기타 메모">
				</div>
			</div>
			
			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">신청일자</label>
				<div class="col-sm-7">
					<input type='date' name="leave_register_date" class="register_date" readonly 
						style="border: 1px solid #e5e6e7; align-self: center; height: 35.6px;"/>
				</div>
			</div>
			
			<!-- 등록 및 창 닫기 버튼 시작 -->
			<div class="hr-line-dashed"></div>
			<div class="col-sm-7">
				<div class="form-group" style="text-align: right;">
					<input type="submit" class="btn btn-primary dim" style="width:100px;" value="등록">
					<input type="button" class="btn btn-primary dim" name="window_close" style="width:100px;" value="창닫기">
				</div>
			</div>
			<!-- 등록 및 창 닫기 버튼 끝 -->
		</form>
	</div>

</body>
</html>