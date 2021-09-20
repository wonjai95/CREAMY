<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userStatics</title>
  	<link href="${path}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/resources/bootstrap/css/font-awesome.css" rel="stylesheet">

    <!-- c3 Charts -->
    <link href="${path}/resources/bootstrap/css/c3/c3.min.css" rel="stylesheet">

    <link href="${path}/resources/bootstrap/css/animate.css" rel="stylesheet">
    <link href="${path}/resources/bootstrap/css/style.css" rel="stylesheet">
<style type="text/css">
#p_group {
	display: flex;
}
</style>

  <!-- Mainly scripts -->
  <script src="${path}/resources/bootstrap/js/jquery-3.1.1.min.js"></script>
  <script src="${path}/resources/bootstrap/js/popper.min.js"></script>
  <script src="${path}/resources/bootstrap/js/bootstrap.js"></script>
  <script src="${path}/resources/bootstrap/js/plugins/metisMenu/jquery.metisMenu.js"></script>
  <script src="${path}/resources/bootstrap/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

  <!-- Custom and plugin javascript -->
  <script src="${path}/resources/bootstrap/js/inspinia.js"></script>
  <script src="${path}/resources/bootstrap/js/plugins/pace/pace.min.js"></script>

  <!-- d3 and c3 charts -->
  <script src="${path}/resources/bootstrap/js/plugins/d3/d3.min.js"></script>
  <script src="${path}/resources/bootstrap/js/plugins/c3/c3.min.js"></script>

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
								href="#tab-1">월별 인원 현황</a></li>
							<li><a class="nav-link" data-toggle="tab" href="#tab-2">유입 경로</a></li>
							<li><a class="nav-link" data-toggle="tab" href="#tab-3">회원 분포</a></li>
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
													<button class="btn btn-primary dim" type="button">검색</button>
												</div>
											</div>
										</div>
									</div>

									<fieldset>
										<div class="wrapper wrapper-content">
											<!-- row 시작 -->
											<div class="row">
												<div class="col-lg-6">
								                    <div class="ibox ">
								                        <div class="ibox-title">
								                            <h5>Border Table </h5>
								                            <div class="ibox-tools">
								                                <a class="collapse-link">
								                                    <i class="fa fa-chevron-up"></i>
								                                </a>
								                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
								                                    <i class="fa fa-wrench"></i>
								                                </a>
								                                <ul class="dropdown-menu dropdown-user">
								                                    <li><a href="#" class="dropdown-item">Config option 1</a>
								                                    </li>
								                                    <li><a href="#" class="dropdown-item">Config option 2</a>
								                                    </li>
								                                </ul>
								                                <a class="close-link">
								                                    <i class="fa fa-times"></i>
								                                </a>
								                            </div>
								                        </div>
								                        <div class="ibox-content">
								
								                            <table class="table table-bordered">
								                                <thead>
								                                <tr>
								                                    <th>#</th>
								                                    <th>First Name</th>
								                                    <th>Last Name</th>
								                                    <th>Username</th>
								                                </tr>
								                                </thead>
								                                <tbody>
								                                <tr>
								                                    <td>1</td>
								                                    <td>Mark</td>
								                                    <td>Otto</td>
								                                    <td>@mdo</td>
								                                </tr>
								                                <tr>
								                                    <td>2</td>
								                                    <td>Jacob</td>
								                                    <td>Thornton</td>
								                                    <td>@fat</td>
								                                </tr>
								                                <tr>
								                                    <td>3</td>
								                                    <td>Larry</td>
								                                    <td>the Bird</td>
								                                    <td>@twitter</td>
								                                </tr>
								                                </tbody>
								                            </table>
								
								                        </div>
								                    </div>
								                </div>
								                <div class="col-lg-6">
								                    <div class="ibox ">
								                        <div class="ibox-title">
								                            <h5>Line Chart Example
								                                <small>With custom colors.</small>
								                            </h5>
								                        </div>
								                        <div class="ibox-content">
								                            <div>
								                                <div id="lineChart"></div>
								                            </div>
								                        </div>
								                    </div>
								                </div>
								                
											</div>
											<!-- row 끝 -->
										</div>
									</fieldset>
								</div>
							</div>
							<%-- <div id="tab-2" class="tab-pane">
								<jsp:include page="stock.jsp" />
							</div>

							<div id="tab-3" class="tab-pane">
								<jsp:include page="trade.jsp" />
							</div>

							<div id="tab-4" class="tab-pane">
								<jsp:include page="inputOutputStatus.jsp" />
							</div> --%>

						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
</div>
 <script>

 $(document).ready(function () {

     c3.generate({
         bindto: '#lineChart',
         data:{
             columns: [
                 ['data1', 30, 200, 100, 400, 150, 250],
                 ['data2', 50, 20, 10, 40, 15, 25]
             ],
             colors:{
                 data1: '#1ab394',
                 data2: '#BABABA'
             }
         }
     });
 });
     
 </script>

</body>
</html>