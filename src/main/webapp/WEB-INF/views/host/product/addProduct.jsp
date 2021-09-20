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
		<form action="addProductAction?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
			<div class="form-group  row">
				<label class="col-sm-2 col-form-label">상품등록</label>
			</div>
			<div class="hr-line-dashed"></div>
			<div class="form-group  row">
				<label class="col-sm-2 col-form-label">상품 그룹</label>
				<div class="col-sm-7">
					<select name="product_group_code" class="form-control">
						<option value="0" selected="selected">상품 그룹 선택</option>
						<option value="커닝시티 헤어샵">커닝시티 헤어샵</option>
						<option value="헤네시스 헤어샵">헤네시스 헤어샵</option>
					</select>
				</div>
			</div>

			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">상품명</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="product_name">
				</div>
			</div>

			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">판매형태</label>
				<label class="col-sm-2 col-form-label"> 
					<input type="radio" name="sale_type" value="1">
					<span>서비스</span>
				</label>
				<label class="col-sm-2 col-form-label"> 
					<input type="radio" name="sale_type" value=0> 
					<span>기간</span>
				</label>

			</div>

			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">상품가격</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="product_price">
				</div>
			</div>

			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">기간</label>
				<div class="col-sm-2">
					<input type="number" class="form-control" name="product_rentalPeriod" min="1" max="12"
						value="1">
				</div>
				<label class="col-sm-2 col-form-label">개월</label>
			</div>

			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">상품이미지</label>
				<div class="col-sm-7">
					<input type="file" class="form-control" name="product_img">
				</div>
			</div>

			<div class="hr-line-dashed"></div>
			<div class="form-group  row">
				<label class="col-sm-2 col-form-label">판매 여부</label>
				<div class="col-sm-3">
					<select class="form-control" name="product_status">
						<option value="0" selected="selected">판매 여부</option>
						<option value="1">판매중</option>
						<option value="0">판매중지</option>
					</select>
				</div>
			</div>


			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">상품설명</label>
				<div class="col-sm-7">
					<textarea rows="20" cols="10" name="product_content" style="width: 400px; height: 200px;">
					</textarea>
				</div>
			</div>

			<div class="hr-line-dashed"></div>
			<div class="form-group row">
				<div align="center">
					<div class="col-sm-6 col-sm-offset-2">
						<input type="submit" class="btn btn-primary btn-sm" value="확인">
						<input type="button" class="btn btn-primary btn-sm" value="창 닫기"
							onclick="self.close();">
					</div>
				</div>
			</div>
		</form>
	</div>

</body>
</html>