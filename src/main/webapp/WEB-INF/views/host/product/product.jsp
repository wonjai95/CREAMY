<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#p_group {
	display: flex;
}
</style>

<script type="text/javascript">
	function addProduct() {
		var url = "addProduct";
		window.open(url, "상품추가",
						"width=700, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	}
</script>
</head>
<body>
	<div id="wrapper">

		<!-- frame  -->
		<jsp:include page="../Frame.jsp" />

		<div id="page-wrapper" class="gray-bg">

			<!-- nav bar  -->
			<jsp:include page="../navbar.jsp" />

			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-8">
					<h2>상품</h2>
				</div>
			</div>


			<div class="wrapper wrapper-content animated fadeInRight ecommerce">

				<div class="row">
					<div class="col-lg-12">
						<div class="tabs-container">
							<ul class="nav nav-tabs">
								<li><a class="nav-link active" data-toggle="tab"
									href="#tab-1">상품 관리</a></li>
								<li><a class="nav-link" data-toggle="tab" href="#tab-2">재고
										관리</a></li>
								<li><a class="nav-link" data-toggle="tab" href="#tab-3">거래처
										관리</a></li>
								<li><a class="nav-link" data-toggle="tab" href="#tab-4">입출고
										현황</a></li>
							</ul>
							<div class="tab-content">
								<div id="tab-1" class="tab-pane active">
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
														<input type="text" id="" name="" value=""
															placeholder="검색어" class="form-control">
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
													<div class="col-lg-3">
														<div id="p_group">
															<div>
																<button type="button" class="btn btn-primary dim">등록</button>
															</div>
															<div>
																<button type="button" class="btn btn-primary dim">수정</button>
															</div>
															<div>
																<button type="button" class="btn btn-primary dim">삭제</button>
															</div>
														</div>

														<div>
															<h5></h5>
															<form action="">
																<table id="p_groupList">
																	<tr>
																		<td><input type="checkbox"></td>
																		<td>상품그룹</td>
																	</tr>

																	<tr>
																		<td colspan="2">
																			<div class="hr-line-dashed"></div>
																		</td>
																	</tr>
																	<tr>
																		<td><input type="checkbox"></td>
																		<td>헤네시스 헤어샵</td>
																	</tr>
																	<tr>
																		<td><input type="checkbox"></td>
																		<td>커닝시티 헤어샵</td>
																	</tr>
																	<tr>
																		<td><input type="checkbox"></td>
																		<td>엘리니아 헤어샵</td>
																	</tr>

																	<tr>
																		<td><input type="checkbox"></td>
																		<td>페리온 헤어샵</td>
																	</tr>
																</table>
															</form>
														</div>
														<table>
															<tfoot>
																<tr>
																	<td colspan="6" class="footable-visible">
																		<ul class="pagination float-right">
																			<li class="footable-page-arrow disabled"><a
																				data-page="first" href="#first">«</a></li>
																			<li class="footable-page-arrow disabled"><a
																				data-page="prev" href="#prev">‹</a></li>
																			<li class="footable-page active"><a
																				data-page="0" href="#">1</a></li>
																			<li class="footable-page"><a data-page="1"
																				href="#">2</a></li>
																			<li class="footable-page-arrow"><a
																				data-page="next" href="#next">›</a></li>
																			<li class="footable-page-arrow"><a
																				data-page="last" href="#last">»</a></li>
																		</ul>
																	</td>
																</tr>
															</tfoot>
														</table>
													</div>
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

														<div class="ibox-content"
															style="margin: 0px; padding: 0px;">

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
																			<span class="footable-sort-indicator">상품명</span>
																		</th>

																		<th
																			class="text-right footable-visible footable-last-column">
																			<span class="footable-sort-indicator">상품가격</span>
																		</th>

																		<th
																			class="text-right footable-visible footable-last-column">
																			<span class="footable-sort-indicator">상품설명</span>
																		</th>
																	</tr>
																</thead>
																<tbody>
																	<tr class="footable-odd" style="">
																		<td class="footable-visible footable-first-column"><span
																			class="footable-toggle"></span> Example product 2</td>
																		<td class="footable-visible">Model 2</td>
																		<td style="display: none;">It is a long
																			established fact that a reader will be distracted by
																			the readable content of a page when looking at its
																			layout. The point of using Lorem Ipsum is that it has
																			a more-or-less normal distribution of letters, as
																			opposed to using 'Content here, content here', making
																			it look like readable English.</td>
																		<td class="footable-visible">$40.00</td>
																		<td class="" style="display: none;">4300</td>
																		<td class="footable-visible"><span
																			class="label label-primary">Enable</span></td>
																		<td
																			class="text-right footable-visible footable-last-column">
																			<div class="btn-group">
																				<button class="btn-white btn btn-xs">View</button>
																				<button class="btn-white btn btn-xs">Edit</button>
																			</div>
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
																				<li class="footable-page active"><a
																					data-page="0" href="#">1</a></li>
																				<li class="footable-page"><a data-page="1"
																					href="#">2</a></li>
																				<li class="footable-page-arrow"><a
																					data-page="next" href="#next">›</a></li>
																				<li class="footable-page-arrow"><a
																					data-page="last" href="#last">»</a></li>
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
								</div>
								<div id="tab-2" class="tab-pane">
									<jsp:include page="stock.jsp" />
								</div>

								<div id="tab-3" class="tab-pane">
									<jsp:include page="trade.jsp" />
								</div>

								<div id="tab-4" class="tab-pane">
									<jsp:include page="inputOutputStatus.jsp" />
								</div>

							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- footer  -->
			<jsp:include page="../footer.jsp" />

		</div>
	</div>

</body>
</html>