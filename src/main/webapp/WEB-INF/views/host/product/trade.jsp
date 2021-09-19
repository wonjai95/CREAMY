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
		window
				.open(url, "네이버새창",
						"width=700, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	}
</script>
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
								<button type="button" class="btn btn-primary dim">상품 등록</button>
							</div>
							<div>
								<button type="button" class="btn btn-primary dim">상품 수정</button>
							</div>
							<div>
								<button type="button" class="btn btn-primary dim">상품 삭제</button>
							</div>
						</div>

						<div class="ibox-content" style="margin: 0px; padding: 0px;">

							<table
								class="footable table table-stripped toggle-arrow-tiny footable-loaded tablet breakpoint"
								data-page-size="15">
								<thead>
									<tr>

										<th data-toggle="true"
											class="footable-visible footable-sortable footable-first-column">Product
											Name<span class="footable-sort-indicator"></span>
										</th>
										<th data-hide="phone"
											class="footable-visible footable-sortable">Model<span
											class="footable-sort-indicator"></span></th>
										<th data-hide="all" class="footable-sortable"
											style="display: none;">Description<span
											class="footable-sort-indicator"></span></th>
										<th data-hide="phone"
											class="footable-visible footable-sortable">Price<span
											class="footable-sort-indicator"></span></th>
										<th data-hide="phone,tablet" class="footable-sortable"
											style="display: none;">Quantity<span
											class="footable-sort-indicator"></span></th>
										<th data-hide="phone"
											class="footable-visible footable-sortable">Status<span
											class="footable-sort-indicator"></span></th>
										<th class="text-right footable-visible footable-last-column"
											data-sort-ignore="true">Action</th>

									</tr>
								</thead>
								<tbody>
									<tr class="footable-even" style="">
										<td class="footable-visible footable-first-column"><span
											class="footable-toggle"></span> Example product 1</td>
										<td class="footable-visible">Model 1</td>
										<td style="display: none;">It is a long established fact
											that a reader will be distracted by the readable content of a
											page when looking at its layout. The point of using Lorem
											Ipsum is that it has a more-or-less normal distribution of
											letters, as opposed to using 'Content here, content here',
											making it look like readable English.</td>
										<td class="footable-visible">$50.00</td>
										<td class="" style="display: none;">1000</td>
										<td class="footable-visible"><span
											class="label label-primary">Enable</span></td>
										<td class="text-right footable-visible footable-last-column">
											<div class="btn-group">
												<button class="btn-white btn btn-xs">View</button>
												<button class="btn-white btn btn-xs">Edit</button>
											</div>
										</td>
									</tr>
									<tr class="footable-odd" style="">
										<td class="footable-visible footable-first-column"><span
											class="footable-toggle"></span> Example product 2</td>
										<td class="footable-visible">Model 2</td>
										<td style="display: none;">It is a long established fact
											that a reader will be distracted by the readable content of a
											page when looking at its layout. The point of using Lorem
											Ipsum is that it has a more-or-less normal distribution of
											letters, as opposed to using 'Content here, content here',
											making it look like readable English.</td>
										<td class="footable-visible">$40.00</td>
										<td class="" style="display: none;">4300</td>
										<td class="footable-visible"><span
											class="label label-primary">Enable</span></td>
										<td class="text-right footable-visible footable-last-column">
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