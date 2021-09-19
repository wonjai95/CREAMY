<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>INSPINIA | Data Tables</title>

<link href="${path}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/font-awesome.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/table/datatables.min.css" rel="stylesheet">

<link href="${path}/resources/bootstrap/css/animate.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/style.css" rel="stylesheet">
<script type="text/javascript" src="${path}/resources/host/js/employee.js"></script>
<script>
function detail(){
	
	var url = "Employee_testDetail"
    window.open(url, "Employee_testDetail", "menubar=no, width=1300, height=800 ");
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
	
<!-- 버튼 클릭시 전달할 직원 코드 -->	
<input type="hidden" value="0" name="employee_code_hidden">
<input type="hidden" value="0" name="employee_name_hidden">
<input type="hidden" value="0" name="employee_depart_hidden">
<!-- 직원 -->
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-8">
        <h2>직원관리</h2>
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.html">Home</a>
            </li>
            <li class="breadcrumb-item">
                Extra pages
            </li>
            <li class="breadcrumb-item active">
                <strong>Calendar</strong>
            </li>
        </ol>
    </div>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
            	<!-- 직원 등록, 근태, 근무시간, 휴가, 급여계약 버튼 시작 -->
                <div id="p_group" style="margin-bottom: 15px;">
					<button type="button" class="btn btn-outline btn-primary" id="employee_enlist_btn">직원등록</button>
					<button type="button" class="btn btn-outline btn-primary" id="employee_attend_btn">근태</button>
					<button type="button" class="btn btn-outline btn-primary" id="employee_workhours_btn">근무시간</button>
					<button type="button" class="btn btn-outline btn-primary" id="employee_leave_btn">휴가</button>
					<button type="button" class="btn btn-outline btn-primary" id="employee_contract_btn">급여계약</button>
						
				</div>
                <!-- 직원 등록, 근태, 근무시간, 휴가, 급여계약 버튼 끝 -->
                
                <!-- 검색 시작 -->
                 <div class="ibox-content m-b-sm border-bottom">
	                <div class="row">
	                    <div class="col-sm-4">
	                        <div class="form-group">
	                            <label class="col-form-label" for="employee_code">직원코드</label>
	                            <input type="text" id="employee_code" name="employee_code" value="" placeholder="직원코드" class="form-control">
	                        </div>
	                    </div>
	                    <div class="col-sm-2">
	                        <div class="form-group">
	                            <label class="col-form-label" for="employee_name">직원명</label>
	                            <input type="text" id="employee_name" name="employee_name" value="" placeholder="직원명" class="form-control">
	                        </div>
	                    </div>
	                    <div class="col-sm-2">
	                        <div class="form-group">
	                            <label class="col-form-label" for="department">부서명</label>
	                            <input type="text" id="department" name="department" value="" placeholder="부서명" class="form-control">
	                        </div>
	                    </div>
	                   <div class="col-sm-2">
							<div class="form-group">
								<br>
								<button class="btn btn-primary dim" type="button" style="width:100px;">검색</button>
							</div>
						</div>
	                </div>
	
	            </div>
	             <!-- 검색 끝 -->   
                
                <!-- 접기, 도구 아이콘 시작 -->
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
                 <!-- 접기, 도구 아이콘 끝 -->
            </div>
            <div class="ibox-content">

            <div class="table-responsive">
                
            <table class="table table-striped table-bordered table-hover dataTables-example">
            <thead>
            <tr>
                <th>직원 코드</th>
                <th>이름</th>
                <th>부서</th>
                <th>직책</th>
                <th>입사날짜</th>
            </tr>
            </thead>
            <tbody>
            <tr class="employee1">
                <td id="empCode1">
                	<input type="text" name="employee1" value="E1"
                		style="display: none">E1
               	</td>
                <td>
                	<input type="text" name="employee_name1" value="정원제"
                		style="display: none">
                	<a href="" onclick="detail();">정원제</a>
                </td>
                <td>회계</td>
                <td class="center">신입</td>
                <td class="center">2021-09-16</td>
            </tr>
            <tr class="employee2">
                <td id="empCode2">
                	<input type="text" name="employee1" value="E2"
                		style="display: none">E2
                </td>
                <td>
                	<input type="text" name="employee_name2" value="주수림"
                		style="display: none">주수림
                </td>
                <td>IT</td>
                <td class="center">신입</td>
                <td class="center">2021-09-16</td>
            </tr>
            <tr class="employee3">
                <td id="empCode3">
                	<input type="text" name="employee1" value="E3"
                		style="display: none">E3
                </td>
                <td>
	       			<input type="text" name="employee_name3" value="정지은"
	                		style="display: none">정지은    
                </td>
                <td>IT</td>
                <td class="center">팀장</td>
                <td class="center">2021-09-16</td>
            </tr>
            <tr class="employee4">
                <td id="empCode4">E4</td>
                <td>이시현</td>
                <td>IT</td>
                <td class="center">신입</td>
                <td class="center">2021-09-16</td>
            </tr>
            <tr class="employee5">
                <td id="empCode5">E5</td>
                <td>장현정</td>
                <td>회계</td>
                <td class="center">팀장</td>
                <td class="center">2021-09-16</td>
            </tr>
            
            <tr class="employee6">
                <td>E6</td>
                <td>한진원</td>
                <td>IT</td>
                <td class="center">신입</td>
                <td class="center">2021-09-16</td>
            </tr>
            </tbody>
         
            </table>
                </div>

            </div>
        </div>
    </div>
    </div>
</div>
</div>
</div>


<!-- Mainly scripts -->
<script src="${path}/resources/bootstrap/js/moment.min.js"></script>
<script src="${path}/resources/bootstrap/js/jquery-3.1.1.min.js"></script>
<script src="${path}/resources/bootstrap/js/popper.min.js"></script>
<script src="${path}/resources/bootstrap/js/bootstrap.js"></script>
<script src="${path}/resources/bootstrap/js/jquery.metisMenu.js"></script>
<script src="${path}/resources/bootstrap/js/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="${path}/resources/bootstrap/js/inspinia.js"></script>
<script src="${path}/resources/bootstrap/js/pace.min.js"></script>

<!-- jQuery UI  -->
<script src="${path}/resources/bootstrap/js/jquery-ui.min.js"></script>

<!-- iCheck -->
<script src="${path}/resources/bootstrap/js/icheck.min.js"></script>

<!-- Full Calendar -->
<script src="${path}/resources/bootstrap/js/fullcalendar.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function(){
            $('.dataTables-example').DataTable({
                pageLength: 25,
                responsive: true,
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [
                    { extend: 'copy'},
                    {extend: 'csv'},
                    {extend: 'excel', title: 'ExampleFile'},
                    {extend: 'pdf', title: 'ExampleFile'},

                    {extend: 'print',
                     customize: function (win){
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');

                            $(win.document.body).find('table')
                                    .addClass('compact')
                                    .css('font-size', 'inherit');
                    }
                    }
                ]

            });

        });

    </script>

</body>
</html>