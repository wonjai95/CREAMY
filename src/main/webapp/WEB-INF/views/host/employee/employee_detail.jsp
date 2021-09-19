<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>INSPINIA | Data Tables</title>

<link href="${path}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/font-awesome.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/summernote-bs4.css" rel="stylesheet">
                            
<link href="${path}/resources/bootstrap/css/datepicker3.css" rel="stylesheet">
                            
<link href="${path}/resources/bootstrap/css/animate.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/style.css" rel="stylesheet">

</head>
<body style="background-color:white;">
	
<!-- Main -->
<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>회원정보</h5>
               
				<button class="btn btn-primary btn-sm" type="submit">Save changes</button>
				<button class="btn btn-white btn-sm" type="submit">Cancel</button>
           		 
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
            
            <!-- 직원 정보 -- 시작 -->
            <div class="ibox-content">
                <form method="get">
                	<table class="table">
			           
			            <tbody>
			            <tr class="" style="border-top:1px solid;">
			                <td>직원코드</td>
			                <td><input type="text" value="E1"></td>
			                <td>부서</td>
			                <td><input type="text" value="회계"></td>
			            </tr>
			            <tr class="">
			                <td>직원ID</td>
			                <td><input type="text" value="test"></td>
			                <td>직책</td>
			                <td><input type="text" value="신입"></td>
			            </tr>
			            <tr class="">
			                <td>직원이름</td>
			                <td><input type="text" value="정원제"></td>
			                <td>직위</td>
			                <td><input type="text" value="신입"></td>
			            </tr>
			            <tr class="">
			                <td>성별</td>
			                <td><input type="text" value="남"></td>
			                <td>직무</td>
			                <td><input type="text" value="잡일"></td>
			            </tr>
			            <tr class="">
			                <td>나이</td>
			                <td><input type="text" value="27"></td>
			                <td>고용형태</td>
			                <td><input type="text" value="계약직"></td>
			            </tr>
			            
			            <tr class="">
			                <td>입사날짜</td>
			                <td><input type="date" value="2021-09-16"></td>
			                <td class="center">퇴사날짜</td>
			                <td><input type="date" value="27"></td>
			            </tr>
			            </tbody>
			         
			          </table>
						<div class="form-group row">
							<div class="col-sm-4 col-sm-offset-2">
						</div>
                    </div>
                </form>
            </div>
            
            
            <!-- 직원 정보 -- 끝 -->
            
            <!-- 근태 / 휴가 / 급여 -- 시작 -->
            <div class="wrapper wrapper-content animated fadeInRight ecommerce" style="padding:12px 0px 12px 20px;">

            <div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                                <li><a class="nav-link active" data-toggle="tab" href="#tab-1"> 근태 </a></li>
                                <li><a class="nav-link" data-toggle="tab" href="#tab-2"> 휴가 </a></li>
                                <li><a class="nav-link" data-toggle="tab" href="#tab-3"> 급여 </a></li>
                            </ul>
                            <div class="tab-content">
                            
                            <!-- 근태 시작 -->
							<div id="tab-1" class="tab-pane active">
							   <div class="panel-body">
							   
									<div class="form-group" id="data_4" style="width:12%;">
									    <div class="input-group date">
									    	<!-- 월선택 달력!!! -->
									      <input type="month" class="form-control" value="07/01/2014" style="width:auto;">
									    </div>
									</div>
						
							       <fieldset>
							           <table class="table table-bordered" style="font-size:12px; text-align:center;">
			                                <thead>
			                                <tr>
			                                    <th style="width:5%;">일자</th>
			                                    <th style="width:9%;">시간</th>
			                                    <th style="width:9%;">구분</th>
			                                    <th style="width:9%;">기록</th>
			                                    <th>메모</th>
			                                    <th style="width:10%;">체온</th>
			                                    <th style="width:8%;">문진 여부</th>
			                                    <th style="width:9%;">확진자 접촉</th>
			                                    <th style="width:8%;">해외 방문</th>
			                                    <th style="width:8%;">집단 발병</th>
			                                </tr>
			                                </thead>
			                                <tbody>
			                                <tr>
			                                    <td>21</td>
			                                    <td>14:12</td>
			                                    <td>출근</td>
			                                    <td>지각</td>
			                                    <td></td>
			                                    <td></td>
			                                    <td>O</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                </tr>
			                                <tr>
			                                    <td>21</td>
			                                    <td>14:12</td>
			                                    <td>출근</td>
			                                    <td>지각</td>
			                                    <td></td>
			                                    <td></td>
			                                    <td>O</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                </tr>
			                                <tr>
			                                    <td>21</td>
			                                    <td>14:12</td>
			                                    <td>출근</td>
			                                    <td>지각</td>
			                                    <td></td>
			                                    <td></td>
			                                    <td>O</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                </tr>
			                                </tbody>
			                            </table>
							       </fieldset>
							   </div>
							</div>
                                
                                <div id="tab-2" class="tab-pane">
                                    <div class="panel-body">

                                        <fieldset>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">ID:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="543"></div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Model:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="..."></div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Location:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="location"></div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Tax Class:</label>
                                                <div class="col-sm-10">
                                                    <select class="form-control" >
                                                        <option>option 1</option>
                                                        <option>option 2</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Quantity:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="Quantity"></div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Minimum quantity:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="2"></div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Sort order:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="0"></div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Status:</label>
                                                <div class="col-sm-10">
                                                    <select class="form-control" >
                                                        <option>option 1</option>
                                                        <option>option 2</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </fieldset>


                                    </div>
                                </div>
                                <div id="tab-3" class="tab-pane">
                                    <div class="panel-body">

                                        <div class="table-responsive">
                                            <table class="table table-stripped table-bordered">

                                                <thead>
                                                <tr>
                                                    <th>
                                                        Group
                                                    </th>
                                                    <th>
                                                        Quantity
                                                    </th>
                                                    <th>
                                                        Discount
                                                    </th>
                                                    <th style="width: 20%">
                                                        Date start
                                                    </th>
                                                    <th style="width: 20%">
                                                        Date end
                                                    </th>
                                                    <th>
                                                        Actions
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <select class="form-control" >
                                                            <option selected>Group 1</option>
                                                            <option>Group 2</option>
                                                            <option>Group 3</option>
                                                            <option>Group 4</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="10">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="$10.00">
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                            <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select class="form-control" >
                                                            <option selected>Group 1</option>
                                                            <option>Group 2</option>
                                                            <option>Group 3</option>
                                                            <option>Group 4</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="10">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="$10.00">
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select class="form-control" >
                                                            <option selected>Group 1</option>
                                                            <option>Group 2</option>
                                                            <option>Group 3</option>
                                                            <option>Group 4</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="10">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="$10.00">
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select class="form-control" >
                                                            <option selected>Group 1</option>
                                                            <option>Group 2</option>
                                                            <option>Group 3</option>
                                                            <option>Group 4</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="10">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="$10.00">
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select class="form-control" >
                                                            <option selected>Group 1</option>
                                                            <option>Group 2</option>
                                                            <option>Group 3</option>
                                                            <option>Group 4</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="10">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="$10.00">
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select class="form-control" >
                                                            <option selected>Group 1</option>
                                                            <option>Group 2</option>
                                                            <option>Group 3</option>
                                                            <option>Group 4</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="10">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="$10.00">
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select class="form-control" >
                                                            <option selected>Group 1</option>
                                                            <option>Group 2</option>
                                                            <option>Group 3</option>
                                                            <option>Group 4</option>
                                                        </select>
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="10">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" placeholder="$10.00">
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="input-group date">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="07/01/2014">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>

                                                </tbody>

                                            </table>
                                        </div>

                                    </div>
                                </div>
                                <div id="tab-4" class="tab-pane">
                                    <div class="panel-body">

                                        <div class="table-responsive">
                                            <table class="table table-bordered table-stripped">
                                                <thead>
                                                <tr>
                                                    <th>
                                                        Image preview
                                                    </th>
                                                    <th>
                                                        Image url
                                                    </th>
                                                    <th>
                                                        Sort order
                                                    </th>
                                                    <th>
                                                        Actions
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/2s.jpg">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" disabled value="http://mydomain.com/images/image1.png">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" value="1">
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/1s.jpg">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" disabled value="http://mydomain.com/images/image2.png">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" value="2">
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/3s.jpg">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" disabled value="http://mydomain.com/images/image3.png">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" value="3">
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/4s.jpg">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" disabled value="http://mydomain.com/images/image4.png">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" value="4">
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/5s.jpg">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" disabled value="http://mydomain.com/images/image5.png">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" value="5">
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/6s.jpg">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" disabled value="http://mydomain.com/images/image6.png">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" value="6">
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="img/gallery/7s.jpg">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" disabled value="http://mydomain.com/images/image7.png">
                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" value="7">
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-white"><i class="fa fa-trash"></i> </button>
                                                    </td>
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
        	<!-- 근태 / 휴가 / 급여 -- 끝 -->
        	
        </div>
    </div>
</div>
                            
</body>
</html>