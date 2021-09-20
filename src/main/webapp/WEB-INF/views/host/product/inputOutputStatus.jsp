<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="panel-body">
		<div class="ibox-content m-b-sm border-bottom">
			<div class="row">
				<div class="col-sm-2">
					<div class="form-group">
						<select name="" id="" class="form-control">
							<option value="1" selected="">판매 여부</option>
							<option value="2">판매중</option>
							<option value="3">판매중지</option>
						</select>
					</div>
				</div>

				<div class="col-sm-2">
					<div class="form-group">
						<select name="" id="" class="form-control">
							<option value="1" selected="">판매 형태</option>
							<option value="2">기간제</option>
							<option value="3">대여형</option>
						</select>
					</div>
				</div>

				<div class="col-sm-2">
					<div class="form-group">
						<input type="text" id="" name="" value="" placeholder="검색어"
							class="form-control">
					</div>
				</div>

				<div class="col-sm-2">
					<div class="form-group">
						<button class="btn btn-primary dim" type="button">찾기</button>
					</div>
				</div>
			</div>
		</div>

		<fieldset>
			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-lg-9 animated fadeInRight">
						<div id="p_group">
							<div>
								<button type="button" class="btn btn-primary dim"
									onclick="addProduct()">상품등록</button>
							</div>
							<div>
								<button type="button" class="btn btn-primary dim">상품수정</button>
							</div>
							<div>
								<button type="button" class="btn btn-primary dim">상품삭제</button>
							</div>
						</div>

						<div class="ibox-content" style="margin: 0px; padding: 0px;">

							<table
								class="footable table table-stripped toggle-arrow-tiny footable-loaded tablet breakpoint"
								data-page-size="15">
								<thead>
									<tr>
										<th class="footable-visible footable-sortable"><input
											type="checkbox"> <span
											class="footable-sort-indicator">전체 선택</span></th>

										<th
											class="footable-visible footable-sortable footable-first-column">
											<span class="footable-sort-indicator">상품 이미지</span>
										</th>

										<th class="text-right footable-visible footable-last-column">
											<span class="footable-sort-indicator">상품명</span>
										</th>

										<th class="text-right footable-visible footable-last-column">
											<span class="footable-sort-indicator">판매형태</span>
										</th>

										<th class="text-right footable-visible footable-last-column">
											<span class="footable-sort-indicator">상품가격</span>
										</th>

										<th class="text-right footable-visible footable-last-column">
											<span class="footable-sort-indicator">상품기간</span>
										</th>

										<th class="text-right footable-visible footable-last-column">
											<span class="footable-sort-indicator">상품그룹</span>
										</th>

										<th class="text-right footable-visible footable-last-column">
											<span class="footable-sort-indicator">상품설명</span>
										</th>

									</tr>
								</thead>
								<tbody>
									<tr class="footable-odd" style="">
										<td class="footable-visible footable-first-column"><input
											type="checkbox"><span>&nbsp;선택</span></td>

										<td class="footable-visible">이미지</td>

										<td class="footable-visible">상품명</td>

										<td class="footable-visible">판매형태</td>

										<td class="footable-visible">상품가격</td>

										<td class="footable-visible">상품기간</td>

										<td class="footable-visible"><span
											class="label label-primary">상픔그룹</span></td>

										<td class="text-right footable-visible footable-last-column">
											<span class="label label-primary">상품설명</span>
										</td>
									</tr>

								</tbody>
								<tfoot>
									<tr>
										<td colspan="6" class="footable-visible">
											<ul class="pagination float-right">
												<li class="footable-page-arrow disabled"><a
													data-page="first" href="#first">«</a></li>
												<li class="footable-page-arrow disabled"><a
													data-page="prev" href="#prev">‹</a></li>
												<li class="footable-page active"><a data-page="0"
													href="#">1</a></li>
												<li class="footable-page"><a data-page="1" href="#">2</a></li>
												<li class="footable-page-arrow"><a data-page="next"
													href="#next">›</a></li>
												<li class="footable-page-arrow"><a data-page="last"
													href="#last">»</a></li>
											</ul>
										</td>
									</tr>
								</tfoot>
							</table>

						</div>
					</div>
				</div>
			</div>
		</fieldset>
	</div>
</body>
</html>